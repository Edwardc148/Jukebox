export const fetchOneArtist = (id) => {
  return $.ajax({
    url: `/api/artists/${id}`
  });
};
