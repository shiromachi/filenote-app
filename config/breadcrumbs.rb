crumb :root do
  link "Home", root_path
end

crumb :filenotes do
  link "Notes", new_filenote_path
  parent :root
end

crumb :works do
  link "Works一覧", works_path
  parent :root
end

crumb :work do
  link "Works追加フォーム", new_work_path
  parent :works
end