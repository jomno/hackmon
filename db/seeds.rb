# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
re_array=["대상 : 100만원 (1팀)", "우수상 : 50만원 (2팀)", "격려상 : 10만원 (3팀)"]
Event.create(name: "2017년 단국대 집현전 해커톤",link: "http://onoffmix.com/event/96891",s_date: "20170512",e_date: "20170520", reward: re_array)
Event.create(name: "국민대학교 두리톤 ver 2.0",link: "http://onoffmix.com/event/98814",s_date: "20170513",e_date: "20170514", reward: re_array)
Event.create(name: "스마트시티 ICT 아이디어 해커톤",link: "http://onoffmix.com/event/99030",s_date: "20170527",e_date: "20170528", reward: re_array)
Event.create(name: "에너지해커톤 2017",link: "http://onoffmix.com/event/95218",s_date: "20170417",e_date: "20170408", reward: re_array)
Event.create(name: "Ablethon 해커톤",link: "http://onoffmix.com/event/94765",s_date: "20170429",e_date: "20170430", reward: re_array)

Job.create(name: "개발자", img: "developer")
Job.create(name: "기획자", img: "planner")
Job.create(name: "디자이너", img: "designer")
Team.create(name: "온라인상에서 미리 팀빌딩을 하는 웹 서비스", idea: "아이디어는 있으나 팀원이 없는 사람, 개발 능력은<br> 충분하나 아이디어가 없는 사람.<br><br>
                            그런 사람들이 해커톤에서 팀빌딩이 만족스럽지 않아 <br>해커톤을 망치지 않게 미리 아이디어와 팀원을 모아 <br>더 나은 해커톤을 진행 할 수 있게 해줍니다.", event_id: 1)
Team.create(name: "약속시간관리 솔루션:Timple", idea: "이번 아이템 팀플(Timple)은 약속 시간을 잡는데 어려움을 겪는 대학생과<br> 직장인을 위한 약속 시간 관리 솔루션 입니다.<br> Timple은 카톡 투표기능이나 시간표 겹쳐보기 어플과는 달리 <br>타임테이블을 기반으로 간단한 드래그 방식을 통해<br> 약속 시간을 정하고 관리하는데 가장 최적화된 웹/앱 솔루션 입니다.", event_id: 1)
Team.create(name: "자기개발 앱", idea: "자기 관리 어플을 만들고 싶습니다.", event_id: 1)
User.create([{username: "노종원", email: "1@1", password: "111111", password_confirmation: "111111"},{username: "김혜원", email: "3@3", password: "111111", password_confirmation: "111111"},{username: "박휘겸", email: "2@2", password: "111111", password_confirmation: "111111"},{username: "홍진택", email: "4@1", password: "111111", password_confirmation: "111111"}])
User.all.each do |u|
    UserJob.create(user_id: u.id, job_id: (1..3).to_a.sample.to_i , level: 1)
end
for i in (1..3)
    TeamJob.create(user_id: i,job_id: User.find(i).main_job.job.id, team_id: i, leader: true)
end