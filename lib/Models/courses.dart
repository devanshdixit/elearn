class Courses{
  String courseName;
  String courseDescription;
  double ratings;
  String createdBy;
  String createdById;
  String language;
  List<String> courseVideos;
  String category;
  Courses(
    {
      this.courseName,
      this.courseDescription,
      this.courseVideos,
      this.createdBy,
      this.createdById,
      this.language,
      this.ratings,
      this.category
    }
  );
}