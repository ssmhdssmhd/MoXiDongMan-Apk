.class Lfreemarker/core/h$for;
.super Lfreemarker/core/e3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-static {v0, p1}, Lfreemarker/core/strictfp;->s(Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/h$for;->t(Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "\n\nThe failing expression:"

    const-string v4, "\n---end-message---"

    const-string v5, "---begin-message---\n"

    const-string v6, "\" string with this error:\n\n"

    const-string v7, "Failed to \"?"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lfreemarker/core/h4;->getTemplate()Lfreemarker/template/static;

    move-result-object v8

    const/4 v14, 0x1

    const/4 v13, 0x2

    .line 2
    :try_start_0
    invoke-virtual {v8}, Lfreemarker/template/static;->j1()Lfreemarker/core/ParserConfiguration;

    move-result-object v0

    .line 3
    new-instance v9, Lfreemarker/core/t3;

    new-instance v10, Ljava/io/StringReader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const v11, -0x3b9aca00

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v13

    invoke-direct {v9, v10, v11, v14, v12}, Lfreemarker/core/t3;-><init>(Ljava/io/Reader;III)V

    .line 5
    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getTabSize()I

    move-result v10

    invoke-virtual {v9, v10}, Lfreemarker/core/t3;->package(I)V

    .line 6
    new-instance v10, Lfreemarker/core/k0;

    invoke-direct {v10, v9}, Lfreemarker/core/k0;-><init>(Lfreemarker/core/t3;)V

    .line 7
    invoke-virtual {v10, v13}, Lfreemarker/core/k0;->try(I)V

    .line 8
    invoke-interface {v0}, Lfreemarker/core/ParserConfiguration;->getOutputFormat()Landroid/support/v4/e91;

    move-result-object v9

    iget-object v11, v1, Lfreemarker/core/e3;->final:Landroid/support/v4/e91;

    if-eq v9, v11, :cond_0

    .line 9
    new-instance v9, Landroid/support/v4/ql2;

    iget v12, v1, Lfreemarker/core/e3;->super:I

    .line 10
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v9, v0, v11, v12}, Landroid/support/v4/ql2;-><init>(Lfreemarker/core/ParserConfiguration;Landroid/support/v4/e91;Ljava/lang/Integer;)V

    move-object v0, v9

    .line 11
    :cond_0
    new-instance v9, Lfreemarker/core/j0;

    const/4 v11, 0x0

    invoke-direct {v9, v8, v11, v10, v0}, Lfreemarker/core/j0;-><init>(Lfreemarker/template/static;ZLfreemarker/core/k0;Lfreemarker/core/ParserConfiguration;)V

    .line 12
    invoke-virtual {v9}, Lfreemarker/core/j0;->switch()Lfreemarker/core/h0;

    move-result-object v0
    :try_end_0
    .catch Landroid/support/v4/w72; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lfreemarker/core/h3; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    invoke-virtual {v0, v2}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0
    :try_end_1
    .catch Lfreemarker/template/TemplateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 14
    new-instance v0, Landroid/support/v4/nl2;

    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    aput-object v2, v9, v14

    aput-object v7, v9, v13

    iget-object v2, v1, Lfreemarker/core/return;->this:Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v2, v9, v7

    const/4 v2, 0x4

    aput-object v6, v9, v2

    const/4 v2, 0x5

    aput-object v5, v9, v2

    new-instance v2, Landroid/support/v4/el2;

    invoke-direct {v2, v8}, Landroid/support/v4/el2;-><init>(Lfreemarker/template/TemplateException;)V

    const/4 v5, 0x6

    aput-object v2, v9, v5

    const/4 v2, 0x7

    aput-object v4, v9, v2

    const/16 v2, 0x8

    aput-object v3, v9, v2

    invoke-direct {v0, v8, v9}, Landroid/support/v4/nl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 15
    :try_start_2
    invoke-virtual {v0, v8}, Landroid/support/v4/w72;->toParseException(Lfreemarker/template/static;)Lfreemarker/core/h3;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lfreemarker/core/h3; {:try_start_2 .. :try_end_2} :catch_1

    .line 16
    :goto_0
    new-instance v8, Landroid/support/v4/nl2;

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    iget-object v7, v1, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v7, v9, v14

    aput-object v6, v9, v13

    const/4 v6, 0x3

    aput-object v5, v9, v6

    new-instance v5, Landroid/support/v4/dl2;

    invoke-direct {v5, v0}, Landroid/support/v4/dl2;-><init>(Ljava/lang/Throwable;)V

    const/4 v6, 0x4

    aput-object v5, v9, v6

    const/4 v5, 0x5

    aput-object v4, v9, v5

    const/4 v4, 0x6

    aput-object v3, v9, v4

    invoke-direct {v8, v1, v2, v9}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw v8
.end method
