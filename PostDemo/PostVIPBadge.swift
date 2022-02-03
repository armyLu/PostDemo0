//
//  PostVIPBadge.swift
//  PostDemo1
//
//  Created by lujun on 2022/2/3.
//


import SwiftUI

struct PostVIPBadge: View {
    var body: some View {
        Text("V")
          .fontWeight(.bold)
          .font(.system(size: 11))
          .frame(width: 15, height: 15)
          .foregroundColor(.yellow)
          .background(Color.red)
          .clipShape(Circle())
          .overlay(
              RoundedRectangle(cornerRadius: 7.5)
                  .stroke(Color.white,lineWidth: 1)
              
          )
          .offset(x: 16, y: 16)
    }
}

struct PostVIPBadge_Previews: PreviewProvider {
    static var previews: some View {
        PostVIPBadge()
    }
}
