.class Lfreemarker/core/j$do;
.super Lfreemarker/core/interface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfreemarker/core/h0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/interface;-><init>()V

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 1
    iget-object v0, v12, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, v13}, Lfreemarker/core/h0;->interface(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v14

    .line 2
    iget-object v15, v12, Lfreemarker/core/j$do;->final:Ljava/util/List;

    .line 3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    const/16 v16, 0x0

    const/4 v10, 0x0

    :goto_0
    add-int/lit8 v9, v10, 0x1

    if-ge v9, v11, :cond_1

    .line 4
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lfreemarker/core/h0;

    .line 5
    invoke-virtual {v5, v13}, Lfreemarker/core/h0;->interface(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v4

    .line 6
    iget-object v1, v12, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v2, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v3, "=="

    move-object v0, v14

    move-object/from16 v6, p0

    move/from16 v19, v9

    move/from16 v9, v17

    move/from16 v17, v10

    move/from16 v10, v18

    move/from16 v18, v11

    move-object/from16 v11, p1

    invoke-static/range {v0 .. v11}, Lfreemarker/core/f0;->catch(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;ILjava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;Lfreemarker/core/h0;ZZZZLfreemarker/core/d0;)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v10, v19

    .line 7
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/h0;

    invoke-virtual {v0, v13}, Lfreemarker/core/h0;->interface(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v10, v17, 0x2

    move/from16 v11, v18

    goto :goto_0

    :cond_1
    move/from16 v18, v11

    .line 8
    rem-int/lit8 v11, v18, 0x2

    const/4 v0, 0x1

    if-eqz v11, :cond_2

    add-int/lit8 v11, v18, -0x1

    .line 9
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/h0;

    invoke-virtual {v0, v13}, Lfreemarker/core/h0;->interface(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    return-object v0

    .line 10
    :cond_2
    new-instance v1, Landroid/support/v4/nl2;

    iget-object v2, v12, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "The value before ?"

    aput-object v4, v3, v16

    iget-object v4, v12, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v4, v3, v0

    const-string v0, "(case1, value1, case2, value2, ...) didn\'t match any of the case parameters, and there was no default value parameter (an additional last parameter) eithter. "

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public r(Ljava/util/List;Lfreemarker/core/m4;Lfreemarker/core/m4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfreemarker/core/h0;",
            ">;",
            "Lfreemarker/core/m4;",
            "Lfreemarker/core/m4;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lfreemarker/core/j$do;->final:Ljava/util/List;

    return-void

    :cond_0
    const-string p1, "must have at least 2"

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/interface;->y(Ljava/lang/String;Lfreemarker/core/m4;Lfreemarker/core/m4;)Lfreemarker/core/h3;

    move-result-object p1

    throw p1
.end method

.method public t(Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lfreemarker/core/j$do;->final:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lfreemarker/core/j$do;->final:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/h0;

    .line 3
    invoke-virtual {v2, p2, p3, p4}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object v2

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    check-cast p1, Lfreemarker/core/j$do;

    iput-object v0, p1, Lfreemarker/core/j$do;->final:Ljava/util/List;

    return-void
.end method

.method public u(I)Lfreemarker/core/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/j$do;->final:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/h0;

    return-object p1
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfreemarker/core/h0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/j$do;->final:Ljava/util/List;

    return-object v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/j$do;->final:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
