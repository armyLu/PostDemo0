//
//  PostCell.swift
//  PostDemo1
//
//  Created by lujun on 2022/2/3.
//
import SwiftUI

struct PostCell: View {
    var body: some View {
        HStack{
            Image(uiImage: UIImage.init(named: "005tnxzUly8gab4i2r73xj30u00u0js8.jpg")!)
                .resizable()
               .aspectRatio( contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(
                   PostVIPBadge()
                )
            VStack(alignment: .leading, spacing: 5){
                Text("用户昵称")
                    .font(.system(size: 16))
                    .foregroundColor(Color( red: 242 / 255, green: 99 / 255, blue: 4 / 255))
                    .lineLimit(1)
                Text("2021-12-14 14:14:14")
                    .font(.system(size: 11))
                    .foregroundColor(.gray)
            }
            .padding(.leading,10)
            Spacer()
            Button {
                debugPrint("关注点击了")
                print("click follow me")
            } label: {
                Text("关注")
                    .font(.system(size: 14))
                    .foregroundColor(.orange)
                    .frame(width: 50, height: 26)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.orange, lineWidth: 1)
                    )
            }
          }
        .background(Color.black.opacity(0.3))
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
