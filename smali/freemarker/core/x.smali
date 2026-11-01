.class Lfreemarker/core/x;
.super Lfreemarker/core/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/x$if;
    }
.end annotation


# static fields
.field private static final break:Lfreemarker/template/TemplateCollectionModel;

.field public static final catch:Lfreemarker/template/TemplateModel;


# instance fields
.field private final goto:Lfreemarker/core/h0;

.field private final this:Lfreemarker/core/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/template/import;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Lfreemarker/template/import;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lfreemarker/core/x;->break:Lfreemarker/template/TemplateCollectionModel;

    .line 2
    new-instance v0, Lfreemarker/core/x$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/core/x$if;-><init>(Lfreemarker/core/x$do;)V

    sput-object v0, Lfreemarker/core/x;->catch:Lfreemarker/template/TemplateModel;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/x;->goto:Lfreemarker/core/h0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/x;->this:Lfreemarker/core/h0;

    return-void
.end method

.method public static synthetic d()Lfreemarker/template/TemplateCollectionModel;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/core/x;->break:Lfreemarker/template/TemplateCollectionModel;

    return-object v0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "...!..."

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/x;->this:Lfreemarker/core/h0;

    const/16 v1, 0x21

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/core/x;->goto:Lfreemarker/core/h0;

    invoke-virtual {v2}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/core/x;->goto:Lfreemarker/core/h0;

    invoke-virtual {v2}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/x;->this:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    .line 1
    invoke-static {p1}, Lfreemarker/core/f3;->do(I)Lfreemarker/core/f3;

    move-result-object p1

    return-object p1
.end method

.method public instanceof()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/x;->goto:Lfreemarker/core/h0;

    instance-of v1, v0, Lfreemarker/core/g3;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->o3(Z)Z

    move-result v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lfreemarker/core/x;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v1
    :try_end_0
    .catch Lfreemarker/core/b1; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->o3(Z)Z

    .line 5
    throw v1

    :catch_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->o3(Z)Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    return-object v1

    .line 8
    :cond_1
    iget-object v0, p0, Lfreemarker/core/x;->this:Lfreemarker/core/h0;

    if-nez v0, :cond_2

    sget-object p1, Lfreemarker/core/x;->catch:Lfreemarker/template/TemplateModel;

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/core/x;

    iget-object v1, p0, Lfreemarker/core/x;->goto:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/x;->this:Lfreemarker/core/h0;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, v1, p1}, Lfreemarker/core/x;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    return-object v0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/x;->this:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lfreemarker/core/x;->goto:Lfreemarker/core/h0;

    return-object p1
.end method
