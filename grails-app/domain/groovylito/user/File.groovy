package groovylito.user

class File {
    String fileType
    byte[] content
    Double size

    static mapping = {
        post column: 'post_belongs_id'
    }

    static constraints = {
        fileType(blank: false, nullable: false, matches: ".+[/]+.+")
        content(blank: false, nullable: false )
        size(blank: false, nullable: false, minSize: 0, maxSize: 1024 * 1024 *10 )
    }

    String toString(){
        return fileType
    }

    def download(){
    }


    def share(){
    }

}
