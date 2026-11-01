.class final Lfreemarker/core/x3;
.super Lfreemarker/core/h0;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;


# instance fields
.field private final goto:Ljava/lang/String;

.field private this:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/x3;->goto:Ljava/lang/String;

    return-void
.end method

.method private d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/x3;->this:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/x3;->this:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/x3;->for()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "dynamic \"...\""

    :goto_0
    return-object v0
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/x3;->this:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lfreemarker/core/x3;->this:Ljava/util/List;

    .line 2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lfreemarker/core/z0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public else()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/x3;->this:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public f(Lfreemarker/core/j0;Landroid/support/v4/e91;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lfreemarker/template/static;->j1()Lfreemarker/core/ParserConfiguration;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lfreemarker/core/ParserConfiguration;->getInterpolationSyntax()I

    move-result v2

    .line 4
    iget-object v3, p0, Lfreemarker/core/x3;->goto:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_3

    const/16 v3, 0x14

    const/4 v4, -0x1

    if-eq v2, v3, :cond_0

    const/16 v5, 0x15

    if-ne v2, v5, :cond_1

    :cond_0
    iget-object v5, p0, Lfreemarker/core/x3;->goto:Ljava/lang/String;

    const-string v6, "${"

    .line 5
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lfreemarker/core/x3;->goto:Ljava/lang/String;

    const-string v5, "#{"

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    :cond_1
    const/16 v3, 0x16

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lfreemarker/core/x3;->goto:Ljava/lang/String;

    const-string v3, "[="

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 8
    :cond_2
    :try_start_0
    new-instance v2, Lfreemarker/core/t3;

    new-instance v3, Ljava/io/StringReader;

    iget-object v4, p0, Lfreemarker/core/x3;->goto:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lfreemarker/core/h4;->for:I

    iget v5, p0, Lfreemarker/core/h4;->if:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lfreemarker/core/x3;->goto:Ljava/lang/String;

    .line 9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lfreemarker/core/t3;-><init>(Ljava/io/Reader;III)V

    .line 10
    invoke-interface {v1}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lfreemarker/core/t3;->package(I)V

    .line 11
    new-instance v3, Lfreemarker/core/k0;

    invoke-direct {v3, v2}, Lfreemarker/core/k0;-><init>(Lfreemarker/core/t3;)V

    .line 12
    new-instance v2, Lfreemarker/core/j0;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v3, v1}, Lfreemarker/core/j0;-><init>(Lfreemarker/template/static;ZLfreemarker/core/k0;Lfreemarker/core/ParserConfiguration;)V

    .line 13
    invoke-virtual {v2, p1, p2}, Lfreemarker/core/j0;->f3(Lfreemarker/core/j0;Landroid/support/v4/e91;)V
    :try_end_0
    .catch Lfreemarker/core/h3; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    invoke-virtual {v2}, Lfreemarker/core/j0;->K()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lfreemarker/core/x3;->this:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v2, p1}, Lfreemarker/core/j0;->h3(Lfreemarker/core/j0;)V
    :try_end_2
    .catch Lfreemarker/core/h3; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lfreemarker/core/h0;->else:Lfreemarker/template/TemplateModel;

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 17
    :try_start_3
    invoke-virtual {v2, p1}, Lfreemarker/core/j0;->h3(Lfreemarker/core/j0;)V

    .line 18
    throw p2
    :try_end_3
    .catch Lfreemarker/core/h3; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {v0}, Lfreemarker/template/static;->q1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfreemarker/core/h3;->setTemplateName(Ljava/lang/String;)V

    .line 20
    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public for()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/core/x3;->this:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/x3;->goto:Ljava/lang/String;

    invoke-static {v0}, Lfreemarker/template/utility/super;->finally(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lfreemarker/core/x3;->this:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    instance-of v4, v3, Lfreemarker/core/z0;

    if-eqz v4, :cond_1

    .line 7
    check-cast v3, Lfreemarker/core/z0;

    invoke-virtual {v3}, Lfreemarker/core/z0;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_1
    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v1}, Lfreemarker/template/utility/super;->for(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/x3;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/x3;->d(I)V

    .line 2
    sget-object p1, Lfreemarker/core/f3;->volatile:Lfreemarker/core/f3;

    return-object p1
.end method

.method public instanceof()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/x3;->this:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/x3;->this:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Landroid/support/v4/ez1;

    iget-object v0, p0, Lfreemarker/core/x3;->goto:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    check-cast v4, Lfreemarker/core/z0;

    .line 5
    invoke-virtual {v4, p1}, Lfreemarker/core/z0;->r(Lfreemarker/core/d0;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    if-eqz v2, :cond_4

    .line 6
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 7
    invoke-interface {v2}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lfreemarker/core/y1;->goto(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object v4

    goto :goto_2

    :cond_3
    check-cast v4, Lfreemarker/core/TemplateMarkupOutputModel;

    .line 8
    :goto_2
    invoke-static {p0, v2, v4}, Lfreemarker/core/f0;->const(Lfreemarker/core/h4;Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object v2

    goto :goto_0

    .line 9
    :cond_4
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 10
    check-cast v4, Ljava/lang/String;

    if-nez v3, :cond_5

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_6
    move-object v2, v4

    check-cast v2, Lfreemarker/core/TemplateMarkupOutputModel;

    if-eqz v3, :cond_1

    .line 14
    invoke-interface {v2}, Lfreemarker/core/TemplateMarkupOutputModel;->getOutputFormat()Lfreemarker/core/y1;

    move-result-object v4

    .line 15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lfreemarker/core/y1;->goto(Ljava/lang/String;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object v3

    .line 16
    invoke-static {p0, v3, v2}, Lfreemarker/core/f0;->const(Lfreemarker/core/h4;Lfreemarker/core/TemplateMarkupOutputModel;Lfreemarker/core/TemplateMarkupOutputModel;)Lfreemarker/core/TemplateMarkupOutputModel;

    move-result-object v2

    move-object v3, v1

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    .line 17
    new-instance v2, Landroid/support/v4/ez1;

    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    sget-object v2, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    :goto_3
    return-object v2
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 0

    .line 1
    new-instance p1, Lfreemarker/core/x3;

    iget-object p2, p0, Lfreemarker/core/x3;->goto:Ljava/lang/String;

    invoke-direct {p1, p2}, Lfreemarker/core/x3;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lfreemarker/core/x3;->this:Ljava/util/List;

    iput-object p2, p1, Lfreemarker/core/x3;->this:Ljava/util/List;

    return-object p1
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/x3;->d(I)V

    .line 2
    iget-object v0, p0, Lfreemarker/core/x3;->this:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
