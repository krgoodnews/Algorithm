import Foundation

func solution(_ record:[String]) -> [String] {
  var result: [String] = []
  var nicknameDic: [String: String] = [:]

  // 최신 닉네임을 nicknameDic에 저장
  for message in record.reversed() {
    let splits = message.split(separator: " ")
    guard splits.count >= 3 else {
      continue
    }

    let uid = String(splits[1])
    let nickname = String(splits[2])

    if nicknameDic[uid] == nil {
      nicknameDic[uid] = nickname
    }

    // 상태메시지를 반환
  }

  // 닉네임을 바탕으로 상태메시지를 변환
  for message in record {
    let splits = message.split(separator: " ")

    guard let status = splits.first else {
      continue
    }
    let uid = String(splits[1])

    guard let nickname = nicknameDic[uid] else {
      continue
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
