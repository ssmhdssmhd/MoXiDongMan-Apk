.class Lfreemarker/ext/jsp/final$if;
.super Lfreemarker/ext/jsp/final$do;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TransformControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/final;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field private case:Z

.field public final synthetic else:Lfreemarker/ext/jsp/final;

.field private final for:Lfreemarker/ext/jsp/else;

.field private final if:Ljavax/servlet/jsp/tagext/Tag;

.field private new:Z

.field private final try:Z


# direct methods
.method public constructor <init>(Lfreemarker/ext/jsp/final;Ljava/io/Writer;Ljavax/servlet/jsp/tagext/Tag;Lfreemarker/ext/jsp/else;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/final$if;->else:Lfreemarker/ext/jsp/final;

    .line 2
    check-cast p2, Ljavax/servlet/jsp/JspWriter;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lfreemarker/ext/jsp/final$do;-><init>(Ljavax/servlet/jsp/JspWriter;Z)V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lfreemarker/ext/jsp/final$if;->new:Z

    .line 4
    iput-boolean p1, p0, Lfreemarker/ext/jsp/final$if;->case:Z

    .line 5
    iput-boolean p5, p0, Lfreemarker/ext/jsp/final$if;->try:Z

    .line 6
    iput-object p3, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    .line 7
    iput-object p4, p0, Lfreemarker/ext/jsp/final$if;->for:Lfreemarker/ext/jsp/else;

    return-void
.end method

.method private strictfp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/jsp/final$if;->new:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->for:Lfreemarker/ext/jsp/else;

    invoke-virtual {v0}, Lfreemarker/ext/jsp/else;->default()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/ext/jsp/final$if;->new:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    invoke-interface {v0}, Ljavax/servlet/jsp/tagext/Tag;->doEndTag()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {}, Lfreemarker/ext/jsp/final;->else()Lfreemarker/log/if;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag.SKIP_PAGE was ignored from a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfreemarker/log/if;->package(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public afterBody()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->else:Lfreemarker/ext/jsp/final;

    invoke-static {v0}, Lfreemarker/ext/jsp/final;->case(Lfreemarker/ext/jsp/final;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    check-cast v0, Ljavax/servlet/jsp/tagext/IterationTag;

    invoke-interface {v0}, Ljavax/servlet/jsp/tagext/IterationTag;->doAfterBody()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    new-instance v1, Landroid/support/v4/k52;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected return value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "from "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".doAfterBody()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    invoke-direct {p0}, Lfreemarker/ext/jsp/final$if;->strictfp()V

    return v1

    .line 5
    :cond_2
    invoke-direct {p0}, Lfreemarker/ext/jsp/final$if;->strictfp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lfreemarker/ext/jsp/final$if;->else:Lfreemarker/ext/jsp/final;

    invoke-virtual {v1, v0}, Lfreemarker/ext/jsp/break;->new(Ljava/lang/Exception;)Landroid/support/v4/k52;

    move-result-object v0

    throw v0
.end method

.method public for()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/jsp/final$if;->case:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lfreemarker/ext/jsp/final$if;->case:Z

    .line 3
    iget-boolean v0, p0, Lfreemarker/ext/jsp/final$if;->new:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->for:Lfreemarker/ext/jsp/else;

    invoke-virtual {v0}, Lfreemarker/ext/jsp/else;->default()V

    .line 5
    :cond_1
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->for:Lfreemarker/ext/jsp/else;

    invoke-virtual {v0}, Lfreemarker/ext/jsp/else;->throws()V

    .line 6
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->else:Lfreemarker/ext/jsp/final;

    invoke-static {v0}, Lfreemarker/ext/jsp/final;->goto(Lfreemarker/ext/jsp/final;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    check-cast v0, Ljavax/servlet/jsp/tagext/TryCatchFinally;

    invoke-interface {v0}, Ljavax/servlet/jsp/tagext/TryCatchFinally;->doFinally()V

    .line 8
    :cond_2
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    invoke-interface {v0}, Ljavax/servlet/jsp/tagext/Tag;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-boolean v0, p0, Lfreemarker/ext/jsp/final$if;->try:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->for:Lfreemarker/ext/jsp/else;

    invoke-virtual {v0}, Lfreemarker/ext/jsp/else;->default()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 11
    iget-boolean v1, p0, Lfreemarker/ext/jsp/final$if;->try:Z

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, p0, Lfreemarker/ext/jsp/final$if;->for:Lfreemarker/ext/jsp/else;

    invoke-virtual {v1}, Lfreemarker/ext/jsp/else;->default()V

    .line 13
    :cond_4
    throw v0
.end method

.method public interface()Ljavax/servlet/jsp/tagext/Tag;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    return-object v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->else:Lfreemarker/ext/jsp/final;

    invoke-static {v0}, Lfreemarker/ext/jsp/final;->goto(Lfreemarker/ext/jsp/final;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    check-cast v0, Ljavax/servlet/jsp/tagext/TryCatchFinally;

    invoke-interface {v0, p1}, Ljavax/servlet/jsp/tagext/TryCatchFinally;->doCatch(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    throw p1
.end method

.method public onStart()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    invoke-interface {v0}, Ljavax/servlet/jsp/tagext/Tag;->doStartTag()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal return value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".doStartTag()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->else:Lfreemarker/ext/jsp/final;

    invoke-static {v0}, Lfreemarker/ext/jsp/final;->try(Lfreemarker/ext/jsp/final;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$do;->goto()V

    .line 5
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    check-cast v0, Ljavax/servlet/jsp/tagext/BodyTag;

    .line 6
    invoke-interface {v0, p0}, Ljavax/servlet/jsp/tagext/BodyTag;->setBodyContent(Ljavax/servlet/jsp/tagext/BodyContent;)V

    .line 7
    invoke-interface {v0}, Ljavax/servlet/jsp/tagext/BodyTag;->doInitBody()V

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Landroid/support/v4/k52;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t buffer body since "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not implement BodyTag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/k52;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return v1

    .line 9
    :cond_4
    :goto_1
    invoke-direct {p0}, Lfreemarker/ext/jsp/final$if;->strictfp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lfreemarker/ext/jsp/final$if;->else:Lfreemarker/ext/jsp/final;

    invoke-virtual {v1, v0}, Lfreemarker/ext/jsp/break;->new(Ljava/lang/Exception;)Landroid/support/v4/k52;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TagWriter for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/ext/jsp/final$if;->if:Ljavax/servlet/jsp/tagext/Tag;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wrapping a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfreemarker/ext/jsp/final$if;->getEnclosingWriter()Ljavax/servlet/jsp/JspWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public volatile()Lfreemarker/ext/jsp/else;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/final$if;->for:Lfreemarker/ext/jsp/else;

    return-object v0
.end method
