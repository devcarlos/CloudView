//
//  CloudView.swift
//  Shared
//
//  Created by Carlos Alcala on 6/24/20.
//

import SwiftUI

public struct CloudView: View {
    public init() {}

    @available(iOS 13.0.0, *)
    @available(OSX 10.15.0, *)
    public var body: some View {
        VStack(alignment: .center) {
            HStack {
                Spacer()
            }
            VStack(spacing:10) {
                if #available(iOS 14.0, *) {
                    if #available(OSX 10.16, *) {
                        Text(Date().addingTimeInterval(600), style: .relative)
                            .font(.title)
                            .minimumScaleFactor(0.01)
                            .foregroundColor(.white)
                            .frame(minWidth: 350, maxWidth: .infinity, minHeight: 0)
                            .padding()
                    }
                    Text("SwiftUI Timer")
                        .font(.subheadline)
                        .foregroundColor(.gray).padding(.bottom, 10)
                }
            }
            .frame(maxWidth: .infinity)
            .background(Color.yellow)
            VStack{
                if #available(iOS 14.0, *) {
                    if #available(OSX 10.16, *) {
                        Image(systemName: "cloud.sun.rain.fill")
                            .renderingMode(.original)
                            .font(.largeTitle)
                            .padding()
                            .background(Color.black)
                            .clipShape(Circle())
                    }
                }
                GeometryReader{g in
                    ZStack {
                        Circle().strokeBorder(Color.red, lineWidth: 30)
                        Text("Text")
                            .foregroundColor(.white)
                            .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.4: g.size.height * 0.4))
                    }
                }
            }
            Spacer()
        }.background(Color.black)
    }
}

public struct CloudView_Previews: PreviewProvider {
    @available(iOS 13.0.0, *)
    @available(OSX 10.15.0, *)
    public static var previews: some View {
        CloudView()
    }
}
