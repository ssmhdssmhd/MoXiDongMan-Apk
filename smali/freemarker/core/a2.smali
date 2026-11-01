.class final Lfreemarker/core/a2;
.super Lfreemarker/core/h0;
.source "SourceFile"


# instance fields
.field private final goto:Lfreemarker/core/h0;

.field private final this:Lfreemarker/core/t1;


# direct methods
.method private constructor <init>(Lfreemarker/core/h0;Lfreemarker/core/t1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 3
    iput-object p1, p0, Lfreemarker/core/a2;->goto:Lfreemarker/core/h0;

    .line 4
    iput-object p2, p0, Lfreemarker/core/a2;->this:Lfreemarker/core/t1;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/core/t1;

    invoke-direct {v0, p2}, Lfreemarker/core/t1;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v0}, Lfreemarker/core/a2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/t1;)V

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "...(...)"

    return-object v0
.end method

.method public d()Lfreemarker/template/TemplateModel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public else()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/a2;->this:Lfreemarker/core/t1;

    iget-object v0, v0, Lfreemarker/core/t1;->goto:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lfreemarker/core/a2;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lfreemarker/core/a2;->this:Lfreemarker/core/t1;

    invoke-virtual {v1}, Lfreemarker/core/t1;->for()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->implements:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/a2;->else()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    sget-object p1, Lfreemarker/core/f3;->abstract:Lfreemarker/core/f3;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public instanceof()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/a2;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 2
    instance-of v0, v3, Lfreemarker/template/TemplateMethodModel;

    if-eqz v0, :cond_1

    .line 3
    check-cast v3, Lfreemarker/template/TemplateMethodModel;

    .line 4
    instance-of v0, v3, Lfreemarker/template/TemplateMethodModelEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/a2;->this:Lfreemarker/core/t1;

    .line 5
    invoke-virtual {v0, p1}, Lfreemarker/core/t1;->f(Lfreemarker/core/d0;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfreemarker/core/a2;->this:Lfreemarker/core/t1;

    .line 6
    invoke-virtual {v0, p1}, Lfreemarker/core/t1;->g(Lfreemarker/core/d0;)Ljava/util/List;

    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v3, v0}, Lfreemarker/template/TemplateMethodModel;->exec(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object p1

    invoke-interface {p1, v0}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    instance-of v0, v3, Lfreemarker/core/x1;

    if-eqz v0, :cond_2

    .line 10
    check-cast v3, Lfreemarker/core/x1;

    iget-object v0, p0, Lfreemarker/core/a2;->this:Lfreemarker/core/t1;

    iget-object v0, v0, Lfreemarker/core/t1;->goto:Ljava/util/ArrayList;

    invoke-virtual {p1, p1, v3, v0, p0}, Lfreemarker/core/d0;->O2(Lfreemarker/core/d0;Lfreemarker/core/x1;Ljava/util/List;Lfreemarker/core/h4;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    new-instance v0, Lfreemarker/core/o2;

    iget-object v2, p0, Lfreemarker/core/a2;->goto:Lfreemarker/core/h0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lfreemarker/core/o2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;ZZ[Ljava/lang/String;Lfreemarker/core/d0;)V

    throw v0
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/core/a2;

    iget-object v1, p0, Lfreemarker/core/a2;->goto:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/a2;->this:Lfreemarker/core/t1;

    .line 3
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    check-cast p1, Lfreemarker/core/t1;

    invoke-direct {v0, v1, p1}, Lfreemarker/core/a2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/t1;)V

    return-object v0
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/a2;->goto:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/a2;->else()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lfreemarker/core/a2;->this:Lfreemarker/core/t1;

    iget-object v0, v0, Lfreemarker/core/t1;->goto:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
