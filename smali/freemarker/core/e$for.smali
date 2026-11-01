.class abstract Lfreemarker/core/e$for;
.super Lfreemarker/core/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "for"
.end annotation


# instance fields
.field private final final:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    .line 2
    iput p1, p0, Lfreemarker/core/e$for;->final:I

    return-void
.end method

.method private r(Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-interface/range {p1 .. p1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v14

    if-eqz v14, :cond_2

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    move-object/from16 v15, p0

    .line 4
    iget v4, v15, Lfreemarker/core/e$for;->final:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v14

    move-object v6, v1

    move-object/from16 v8, p0

    move-object/from16 v13, p2

    .line 5
    invoke-static/range {v2 .. v13}, Lfreemarker/core/f0;->catch(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Lfreemarker/core/h0;ZZZZLfreemarker/core/d0;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_1
    move-object/from16 v15, p0

    :goto_1
    move-object v1, v14

    goto :goto_0

    :cond_2
    move-object/from16 v15, p0

    goto :goto_0

    :cond_3
    move-object/from16 v15, p0

    return-object v1
.end method

.method private s(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface/range {p1 .. p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    move-object/from16 v14, p1

    .line 2
    invoke-interface {v14, v1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v15

    if-eqz v15, :cond_1

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    move-object/from16 v13, p0

    .line 3
    iget v4, v13, Lfreemarker/core/e$for;->final:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v15

    move-object v6, v0

    move-object/from16 v8, p0

    move-object/from16 v13, p2

    .line 4
    invoke-static/range {v2 .. v13}, Lfreemarker/core/f0;->catch(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Lfreemarker/core/h0;ZZZZLfreemarker/core/d0;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v15

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lfreemarker/core/e;->for(Lfreemarker/template/TemplateModel;)V

    .line 4
    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {p0, v0, p1}, Lfreemarker/core/e$for;->r(Lfreemarker/template/TemplateCollectionModel;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {p0, v0, p1}, Lfreemarker/core/e$for;->s(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance v1, Lfreemarker/core/t2;

    iget-object v2, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/t2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw v1
.end method

.method public q(Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/return;->q(Lfreemarker/core/h0;)V

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/h0;->switch()V

    return-void
.end method
