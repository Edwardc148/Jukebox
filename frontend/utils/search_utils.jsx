export const search = (searchValue) => (
  $.ajax({
    method: 'GET',
    url : 'api/searches/',
    data: { searchValue: searchValue }
  })
);
