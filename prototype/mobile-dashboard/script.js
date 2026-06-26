document.addEventListener('DOMContentLoaded',()=>{
  const kpis = {due:1200,collected:8400,pending:320,students:420}
  document.getElementById('kpi-due').textContent = `$${kpis.due}`
  document.getElementById('kpi-col').textContent = `$${kpis.collected}`
  document.getElementById('kpi-pend').textContent = `$${kpis.pending}`
  document.getElementById('kpi-stu').textContent = kpis.students

  const activity=[
    {who:'Ali',text:'Paid tuition',meta:'10m ago'},
    {who:'Sara',text:'Receipt issued',meta:'45m ago'},
    {who:'Admin',text:'New student added',meta:'1h ago'},
  ]
  const ul=document.getElementById('activity-list')
  activity.forEach(a=>{
    const li=document.createElement('li');li.className='activity-row'
    li.innerHTML = `<div class="avatar">${a.who[0]}</div><div class="activity-text"><div><strong>${a.who}</strong> <span class="activity-meta">${a.text}</span></div><div class="activity-meta">${a.meta}</div></div>`
    ul.appendChild(li)
  })

  document.querySelectorAll('.nav-item').forEach(b=>b.addEventListener('click',e=>{
    document.querySelectorAll('.nav-item').forEach(x=>x.classList.remove('active'))
    e.currentTarget.classList.add('active')
  }))

  document.querySelector('.fab').addEventListener('click',()=>alert('Open Add Payment modal (prototype)'))
})
