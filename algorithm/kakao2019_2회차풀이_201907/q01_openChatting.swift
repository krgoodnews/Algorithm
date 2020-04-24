import Foundation

private func solution(_ record:[String]) -> [String] {
  var result: [String] = []
  var nicknameDic: [String: String] = [:]

  // 최신 닉네임을 nicknameDic에 저장
  record.reversed().forEach {
    let splits = $0.split(separator: " ")
    guard splits.count >= 3 else {
      return
    }

    let uid = String(splits[1])
    let nickname = String(splits[2])

    if nicknameDic[uid] == nil {
      nicknameDic[uid] = nickname
    }
  }

  // 닉네임을 바탕으로 상태메시지를 변환
  record.forEach {
    let splits = $0.split(separator: " ")

    guard let status = splits.first else {
      return
    }

    let uid = String(splits[1])

    guard let nickname = nicknameDic[uid] else {
      return
    }

    switch String(status) {
    case "Enter":
      result.append("\(nickname)님이 들어왔습니다.")
    case "Leave":
      result.append("\(nickname)님이 나갔습니다.")
    default:
      break
    }

  }

  return result
}
