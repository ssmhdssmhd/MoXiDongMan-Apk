.class Lfreemarker/core/a1;
.super Lfreemarker/core/e3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/a1$do;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/e3;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 2
    instance-of v0, v3, Lfreemarker/template/TemplateSequenceModel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v5, "anonymous_interpreted"

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lfreemarker/core/b0;

    iget-object v6, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    new-instance v7, Lfreemarker/core/z2;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8}, Lfreemarker/core/z2;-><init>(Ljava/lang/Number;)V

    invoke-direct {v0, v6, v7}, Lfreemarker/core/b0;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    iget-object v6, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, v6}, Lfreemarker/core/h4;->if(Lfreemarker/core/h4;)Lfreemarker/core/h4;

    move-result-object v0

    check-cast v0, Lfreemarker/core/h0;

    .line 4
    check-cast v3, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v3}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 5
    new-instance v3, Lfreemarker/core/b0;

    iget-object v5, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    new-instance v6, Lfreemarker/core/z2;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lfreemarker/core/z2;-><init>(Ljava/lang/Number;)V

    invoke-direct {v3, v5, v6}, Lfreemarker/core/b0;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    iget-object v5, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v3, v5}, Lfreemarker/core/h4;->if(Lfreemarker/core/h4;)Lfreemarker/core/h4;

    move-result-object v3

    check-cast v3, Lfreemarker/core/h0;

    invoke-virtual {v3, p1}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, v3, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lfreemarker/core/d0;->u1()Lfreemarker/template/do;

    move-result-object v3

    invoke-virtual {v3}, Lfreemarker/template/do;->getIncompatibleImprovements()Landroid/support/v4/we2;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/we2;->intValue()I

    move-result v3

    sget v6, Landroid/support/v4/ul2;->this:I

    if-lt v3, v6, :cond_2

    .line 10
    invoke-virtual {p1}, Lfreemarker/core/d0;->A1()Lfreemarker/template/static;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lfreemarker/core/d0;->e2()Lfreemarker/template/static;

    move-result-object v3

    .line 11
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Lfreemarker/template/static;->j1()Lfreemarker/core/ParserConfiguration;

    move-result-object v6

    .line 12
    invoke-interface {v6}, Lfreemarker/core/ParserConfiguration;->getOutputFormat()Landroid/support/v4/e91;

    move-result-object v7

    iget-object v8, p0, Lfreemarker/core/e3;->final:Landroid/support/v4/e91;

    if-eq v7, v8, :cond_3

    .line 13
    new-instance v7, Landroid/support/v4/ql2;

    iget v9, p0, Lfreemarker/core/e3;->super:I

    .line 14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v6, v8, v9}, Landroid/support/v4/ql2;-><init>(Lfreemarker/core/ParserConfiguration;Landroid/support/v4/e91;Ljava/lang/Integer;)V

    move-object v10, v7

    goto :goto_2

    :cond_3
    move-object v10, v6

    .line 15
    :goto_2
    new-instance v12, Lfreemarker/template/static;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {v3}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    const-string v7, "nameless_template"

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object v9

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lfreemarker/template/static;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Lfreemarker/template/do;Lfreemarker/core/ParserConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    invoke-virtual {p1}, Lfreemarker/core/t;->strictfp()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v12, p1}, Lfreemarker/core/t;->t0(Ljava/util/Locale;)V

    .line 19
    new-instance p1, Lfreemarker/core/a1$do;

    invoke-direct {p1, p0, v12}, Lfreemarker/core/a1$do;-><init>(Lfreemarker/core/a1;Lfreemarker/template/static;)V

    return-object p1

    :catch_0
    move-exception v0

    .line 20
    new-instance v3, Landroid/support/v4/nl2;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Template parsing with \"?"

    aput-object v6, v5, v2

    iget-object v2, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v2, v5, v4

    const-string v2, "\" has failed with this error:\n\n"

    aput-object v2, v5, v1

    const/4 v1, 0x3

    const-string v2, "---begin-message---\n"

    aput-object v2, v5, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/support/v4/dl2;

    invoke-direct {v2, v0}, Landroid/support/v4/dl2;-><init>(Ljava/lang/Throwable;)V

    aput-object v2, v5, v1

    const/4 v1, 0x5

    const-string v2, "\n---end-message---"

    aput-object v2, v5, v1

    const/4 v1, 0x6

    const-string v2, "\n\nThe failed expression:"

    aput-object v2, v5, v1

    invoke-direct {v3, p0, v0, p1, v5}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Ljava/lang/Throwable;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v3

    .line 21
    :cond_5
    new-instance v0, Lfreemarker/core/r4;

    iget-object v5, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    new-array v6, v1, [Ljava/lang/Class;

    const-class v1, Lfreemarker/template/TemplateSequenceModel;

    aput-object v1, v6, v2

    const-class v1, Lfreemarker/template/TemplateScalarModel;

    aput-object v1, v6, v4

    const-string v4, "sequence or string"

    move-object v1, v0

    move-object v2, v5

    move-object v5, v6

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)V

    throw v0
.end method
