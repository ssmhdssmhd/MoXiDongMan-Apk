.class public Lfreemarker/ext/jsp/goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/jsp/tagext/BodyTag;


# instance fields
.field private case:Z

.field private do:Ljavax/servlet/jsp/tagext/Tag;

.field private else:Ljava/lang/String;

.field private for:Ljavax/servlet/jsp/PageContext;

.field private if:Ljavax/servlet/jsp/tagext/BodyContent;

.field private new:Lfreemarker/template/native;

.field private try:Lfreemarker/template/static;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lfreemarker/ext/jsp/goto;->case:Z

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lfreemarker/ext/jsp/goto;->else:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public break(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lfreemarker/ext/jsp/goto;->else:Ljava/lang/String;

    return-void
.end method

.method public case()Ljavax/servlet/jsp/tagext/Tag;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/goto;->do:Ljavax/servlet/jsp/tagext/Tag;

    return-object v0
.end method

.method public catch(Ljavax/servlet/jsp/PageContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/goto;->for:Ljavax/servlet/jsp/PageContext;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lfreemarker/ext/jsp/goto;->new:Lfreemarker/template/native;

    return-void
.end method

.method public class(Ljavax/servlet/jsp/tagext/Tag;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/goto;->do:Ljavax/servlet/jsp/tagext/Tag;

    return-void
.end method

.method public do()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public else()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lfreemarker/ext/jsp/goto;->new:Lfreemarker/template/native;

    .line 2
    iput-object v0, p0, Lfreemarker/ext/jsp/goto;->try:Lfreemarker/template/static;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lfreemarker/ext/jsp/goto;->else:Ljava/lang/String;

    return-void
.end method

.method public for()V
    .locals 0

    return-void
.end method

.method public goto(Ljavax/servlet/jsp/tagext/BodyContent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/goto;->if:Ljavax/servlet/jsp/tagext/BodyContent;

    return-void
.end method

.method public if()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/goto;->if:Ljavax/servlet/jsp/tagext/BodyContent;

    const/4 v1, 0x6

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lfreemarker/ext/jsp/goto;->try:Lfreemarker/template/static;

    if-nez v2, :cond_1

    .line 3
    new-instance v2, Lfreemarker/template/static;

    iget-object v3, p0, Lfreemarker/ext/jsp/goto;->else:Ljava/lang/String;

    iget-object v4, p0, Lfreemarker/ext/jsp/goto;->if:Ljavax/servlet/jsp/tagext/BodyContent;

    invoke-virtual {v4}, Ljavax/servlet/jsp/tagext/BodyContent;->getReader()Ljava/io/Reader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    iput-object v2, p0, Lfreemarker/ext/jsp/goto;->try:Lfreemarker/template/static;

    .line 4
    :cond_1
    iget-object v2, p0, Lfreemarker/ext/jsp/goto;->new:Lfreemarker/template/native;

    if-nez v2, :cond_2

    .line 5
    new-instance v2, Lfreemarker/template/native;

    invoke-direct {v2}, Lfreemarker/template/native;-><init>()V

    iput-object v2, p0, Lfreemarker/ext/jsp/goto;->new:Lfreemarker/template/native;

    const-string v3, "page"

    .line 6
    new-instance v4, Lfreemarker/ext/jsp/this;

    iget-object v5, p0, Lfreemarker/ext/jsp/goto;->for:Ljavax/servlet/jsp/PageContext;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lfreemarker/ext/jsp/this;-><init>(Ljavax/servlet/jsp/PageContext;I)V

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v2, p0, Lfreemarker/ext/jsp/goto;->new:Lfreemarker/template/native;

    const-string v3, "request"

    new-instance v4, Lfreemarker/ext/jsp/this;

    iget-object v5, p0, Lfreemarker/ext/jsp/goto;->for:Ljavax/servlet/jsp/PageContext;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lfreemarker/ext/jsp/this;-><init>(Ljavax/servlet/jsp/PageContext;I)V

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v2, p0, Lfreemarker/ext/jsp/goto;->new:Lfreemarker/template/native;

    const-string v3, "session"

    new-instance v4, Lfreemarker/ext/jsp/this;

    iget-object v5, p0, Lfreemarker/ext/jsp/goto;->for:Ljavax/servlet/jsp/PageContext;

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lfreemarker/ext/jsp/this;-><init>(Ljavax/servlet/jsp/PageContext;I)V

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v2, p0, Lfreemarker/ext/jsp/goto;->new:Lfreemarker/template/native;

    const-string v3, "application"

    new-instance v4, Lfreemarker/ext/jsp/this;

    iget-object v5, p0, Lfreemarker/ext/jsp/goto;->for:Ljavax/servlet/jsp/PageContext;

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lfreemarker/ext/jsp/this;-><init>(Ljavax/servlet/jsp/PageContext;I)V

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v2, p0, Lfreemarker/ext/jsp/goto;->new:Lfreemarker/template/native;

    const-string v3, "any"

    new-instance v4, Lfreemarker/ext/jsp/this;

    iget-object v5, p0, Lfreemarker/ext/jsp/goto;->for:Ljavax/servlet/jsp/PageContext;

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lfreemarker/ext/jsp/this;-><init>(Ljavax/servlet/jsp/PageContext;I)V

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/native;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    :cond_2
    iget-object v2, p0, Lfreemarker/ext/jsp/goto;->try:Lfreemarker/template/static;

    iget-object v3, p0, Lfreemarker/ext/jsp/goto;->new:Lfreemarker/template/native;

    iget-object v4, p0, Lfreemarker/ext/jsp/goto;->for:Ljavax/servlet/jsp/PageContext;

    invoke-virtual {v4}, Ljavax/servlet/jsp/PageContext;->getOut()Ljavax/servlet/jsp/JspWriter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lfreemarker/template/static;->t1(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-boolean v2, p0, Lfreemarker/ext/jsp/goto;->case:Z

    if-nez v2, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 13
    :try_start_1
    iget-object v3, p0, Lfreemarker/ext/jsp/goto;->for:Ljavax/servlet/jsp/PageContext;

    invoke-virtual {v3, v2}, Ljavax/servlet/jsp/PageContext;->handlePageException(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iget-boolean v2, p0, Lfreemarker/ext/jsp/goto;->case:Z

    if-nez v2, :cond_3

    .line 15
    :goto_0
    iput-object v0, p0, Lfreemarker/ext/jsp/goto;->try:Lfreemarker/template/static;

    :cond_3
    return v1

    :catch_1
    move-exception v1

    .line 16
    :try_start_2
    new-instance v2, Ljavax/servlet/jsp/JspException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/servlet/jsp/JspException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v1

    .line 17
    new-instance v2, Ljavax/servlet/jsp/JspException;

    invoke-virtual {v1}, Ljavax/servlet/ServletException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/servlet/jsp/JspException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :goto_1
    iget-boolean v2, p0, Lfreemarker/ext/jsp/goto;->case:Z

    if-nez v2, :cond_4

    .line 19
    iput-object v0, p0, Lfreemarker/ext/jsp/goto;->try:Lfreemarker/template/static;

    .line 20
    :cond_4
    throw v1
.end method

.method public new()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public this(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfreemarker/ext/jsp/goto;->case:Z

    return-void
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/jsp/goto;->case:Z

    return v0
.end method
