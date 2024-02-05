//
//  Home.swift
//  Circular_carousel
//
//  Created by Omid Shojaeian Zanjani on 22/01/24.
//
//
//

import SwiftUI

struct Home: View {
    @State private var pickerType: TripPicker = .normal
    @State private var sizesOnScroll:CGRect = .zero
    @State  var x:CGFloat = .zero
    @State  var y:CGFloat = .zero
    @State private var activeID:Int?
    
    var body: some View {
        VStack {
            NavigationLink(destination: CustomTab()) {
                Text("Click on me!")
            }
            //Text("Size : \(sizesOnScroll.maxX)")
            Picker("", selection: $pickerType){
                ForEach(TripPicker.allCases, id:\.rawValue) {item in
                    Text(item.rawValue)
                        .tag(item)
                }
            }.pickerStyle(.segmented)
                .padding()
            Spacer()
            MyView(x: $x, y: $y)
           Spacer(minLength: 0)
            GeometryReader{ geometry in
                let size = geometry.size
                let paddingForCarosel = (size.width - 70) / 2
                //let _ = print("error : \(paddingForCarosel)")
                ScrollView(.horizontal){
                    HStack(spacing: 35){
                        ForEach(1...8 , id: \.self){ index in
                            var _ = print("Pic \(index)")
                            Image("Pic \(index < 9 ? index : index != 0 ? (index % 7) : 1)")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(.circle)
                            // Shadow
                                .shadow(color: .black.opacity(0.15), radius: 5, x:5, y: 5)
                            // این قسمت از کد یک مقدار وای برای هر آیتم در اسکرول محاسبه میکنه
                                .visualEffect { view, proxy in
                                    view
                                        .offset(y: offset(proxy))
                                        .offset(y: scale(proxy) * 15)
                                }
                                .scrollTransition(.interactive, axis: .horizontal){
                                    view, phase in
                                    view
                                    //                                              .offset(y: phase.isIdentity && activeID == index ? 15:0 )
                                        .scaleEffect(phase.isIdentity && activeID == index && pickerType == .scaled ? 1.5 : 1, anchor: .bottom)
                                }
                        }
                    }
                    //.padding(.horizontal, paddingForCarosel)
                    .frame(height: size.height)
                    .offset(y: -30)
                    .scrollTargetLayout()
                }
                .background(content: {
                    if pickerType == .normal {
                        Circle()
                            .fill(Color.green.shadow(.drop(color: .black.opacity(0.2) ,radius: 5)))
                            .frame(width: 85 + x, height: 85 + x)
                            .offset(y: -15)
                        
                        
                    }
                })
                
                .safeAreaPadding(.horizontal, max(0, paddingForCarosel))
                .scrollIndicators(.hidden)
                .scrollTargetBehavior(.viewAligned)
                .scrollPosition(id: $activeID)
                .frame(height: size.height)
            }
            .frame(height: 200)
            
        }
        .ignoresSafeArea(.container, edges: .bottom)
    }
    
    
    
    func offset(_ proxy: GeometryProxy) -> CGFloat {
        let progress = progress(proxy)
        /// Simply Moving View Up/Down Based on Progress
        return progress < 0 ? progress * -30 : progress * 30
    }
    
    func scale(_ proxy: GeometryProxy) -> CGFloat {
        let progress = min(max(progress(proxy), -1), 1)
        
        return progress < 0 ? 1 + progress : 1 - progress
    }
    /// Circular Slider View Offset
    /// با اضافه کردم مقدار
    /// val
    /// تونستم ثابت کنم که مقدار
    /// padding
    /// رو میتونم دستی به مقدار محاسبه شده
    /// minX
    /// ااضافه کنم
    /// در صورتی که در
    /// ios 17
    /// یک
    /// modifier
    /// جدید اضافه شده که میتونه  اینکار رو انجام بده و اسمش هست
    ///.safeAreaPadding(.horizontal, paddingForCarosel)
    func progress(_ proxy: GeometryProxy) -> CGFloat {
        /// View Width
        let viewWidth = proxy.size.width
        let minX = (proxy.bounds(of: .scrollView)?.minX ?? 0)
        return (minX / viewWidth)
    }
}

struct MyView:View {
    
    @Binding  var x:CGFloat
    @Binding  var y:CGFloat
    
    
    var body: some View {
        VStack(spacing:100){
            
            Slider(value: $x, in: 0...100) {
                Text("\(x)")
            }
            Slider(value: $y, in: -100...100) {
                Text("\(y)")
            }
            
        }.padding()
    }
}

#Preview {
    ContentView()
}

/// Slider Type
enum TripPicker: String, CaseIterable {
    case scaled = "Scaled"
    case normal = "Normal"
}
