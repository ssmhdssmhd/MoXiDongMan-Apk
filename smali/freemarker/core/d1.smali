.class final Lfreemarker/core/d1;
.super Lfreemarker/core/b4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/d1$do;
    }
.end annotation


# instance fields
.field private final class:Lfreemarker/core/h0;

.field private final const:Ljava/lang/String;

.field private final final:Ljava/lang/String;

.field private final super:Z

.field private final throw:Z


# direct methods
.method public constructor <init>(Lfreemarker/core/h0;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/c4;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/b4;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/d1;->class:Lfreemarker/core/h0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/d1;->const:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lfreemarker/core/d1;->final:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p4}, Lfreemarker/core/b4;->p(Lfreemarker/core/c4;)V

    .line 6
    iput-boolean p5, p0, Lfreemarker/core/d1;->super:Z

    .line 7
    iput-boolean p6, p0, Lfreemarker/core/d1;->throw:Z

    .line 8
    invoke-virtual {p1}, Lfreemarker/core/h0;->switch()V

    return-void
.end method

.method public static synthetic s(Lfreemarker/core/d1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfreemarker/core/d1;->super:Z

    return p0
.end method

.method public static synthetic t(Lfreemarker/core/d1;)Lfreemarker/core/h0;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/core/d1;->class:Lfreemarker/core/h0;

    return-object p0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/d1;->throw:Z

    if-eqz v0, :cond_0

    const-string v0, "#foreach"

    goto :goto_0

    :cond_0
    const-string v0, "#list"

    :goto_0
    return-object v0
.end method

.method public else()I
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/core/d1;->const:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v2

    iget-object v3, p0, Lfreemarker/core/d1;->final:Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d1;->const:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lfreemarker/core/d1;->final:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lfreemarker/core/f3;->return:Lfreemarker/core/f3;

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 5
    :cond_2
    iget-object p1, p0, Lfreemarker/core/d1;->const:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 6
    sget-object p1, Lfreemarker/core/f3;->return:Lfreemarker/core/f3;

    return-object p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 8
    :cond_4
    sget-object p1, Lfreemarker/core/f3;->public:Lfreemarker/core/f3;

    return-object p1
.end method

.method public native(Lfreemarker/core/d0;)[Lfreemarker/core/b4;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/core/d1;->r(Lfreemarker/core/d0;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public r(Lfreemarker/core/d0;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/d1;->class:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/t;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lfreemarker/template/utility/for;->this:Lfreemarker/template/TemplateSequenceModel;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/core/d1;->class:Lfreemarker/core/h0;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lfreemarker/core/h0;->public(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    .line 5
    :cond_1
    :goto_0
    new-instance v1, Lfreemarker/core/d1$do;

    iget-object v2, p0, Lfreemarker/core/d1;->const:Ljava/lang/String;

    iget-object v3, p0, Lfreemarker/core/d1;->final:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2, v3}, Lfreemarker/core/d1$do;-><init>(Lfreemarker/core/d1;Lfreemarker/template/TemplateModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lfreemarker/core/d0;->F3(Lfreemarker/core/d1$do;)Z

    move-result p1

    return p1
.end method

.method public switch(Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/d1;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, p0, Lfreemarker/core/d1;->throw:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lfreemarker/core/d1;->const:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/yk2;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lfreemarker/core/d1;->class:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lfreemarker/core/d1;->class:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lfreemarker/core/d1;->const:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " as "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lfreemarker/core/d1;->const:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/yk2;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lfreemarker/core/d1;->final:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Lfreemarker/core/d1;->final:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/yk2;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    const-string p1, ">"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lfreemarker/core/b4;->private()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lfreemarker/core/b4;->synchronized()Lfreemarker/core/b4;

    move-result-object p1

    instance-of p1, p1, Lfreemarker/core/s1;

    if-nez p1, :cond_3

    const-string p1, "</"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lfreemarker/core/d1;->case()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lfreemarker/core/d1;->final:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_2
    iget-object p1, p0, Lfreemarker/core/d1;->const:Ljava/lang/String;

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 4
    :cond_4
    iget-object p1, p0, Lfreemarker/core/d1;->class:Lfreemarker/core/h0;

    return-object p1
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/d1;->super:Z

    return v0
.end method
