.class abstract Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;
.super Lfreemarker/core/interface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$do;,
        Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$for;,
        Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$if;,
        Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;
    }
.end annotation


# instance fields
.field private final:Lfreemarker/core/h0;

.field private super:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

.field private throw:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/interface;-><init>()V

    return-void
.end method

.method private A(Lfreemarker/core/d0;)Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->super:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->final:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 3
    instance-of v0, v3, Lfreemarker/template/TemplateMethodModel;

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$for;

    check-cast v3, Lfreemarker/template/TemplateMethodModel;

    invoke-direct {p1, v3}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$for;-><init>(Lfreemarker/template/TemplateMethodModel;)V

    return-object p1

    .line 5
    :cond_1
    instance-of v0, v3, Lfreemarker/core/x1;

    if-eqz v0, :cond_2

    .line 6
    new-instance p1, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$do;

    check-cast v3, Lfreemarker/core/x1;

    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->final:Lfreemarker/core/h0;

    invoke-direct {p1, v3, v0}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$do;-><init>(Lfreemarker/core/x1;Lfreemarker/core/h0;)V

    return-object p1

    .line 7
    :cond_2
    new-instance v0, Lfreemarker/core/o2;

    iget-object v2, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->final:Lfreemarker/core/h0;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lfreemarker/core/o2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;ZZ[Ljava/lang/String;Lfreemarker/core/d0;)V

    throw v0
.end method


# virtual methods
.method public B()Lfreemarker/core/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->final:Lfreemarker/core/h0;

    return-object v0
.end method

.method public final C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->throw:Z

    return v0
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 7
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
    instance-of v0, v3, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lfreemarker/core/o1;

    move-object v1, v3

    check-cast v1, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {v0, v1}, Lfreemarker/core/o1;-><init>(Lfreemarker/template/TemplateCollectionModel;)V

    goto :goto_0

    :cond_0
    move-object v0, v3

    check-cast v0, Lfreemarker/template/TemplateCollectionModel;

    .line 4
    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    .line 5
    :goto_0
    instance-of v1, v3, Lfreemarker/core/i1;

    if-eqz v1, :cond_1

    move-object v1, v3

    check-cast v1, Lfreemarker/core/i1;

    .line 6
    invoke-virtual {v1}, Lfreemarker/core/i1;->if()Z

    move-result v1

    goto :goto_1

    :cond_1
    instance-of v1, v3, Lfreemarker/template/TemplateSequenceModel;

    :goto_1
    move-object v2, v0

    move v4, v1

    goto :goto_2

    .line 7
    :cond_2
    instance-of v0, v3, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Lfreemarker/core/p1;

    move-object v1, v3

    check-cast v1, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {v0, v1}, Lfreemarker/core/p1;-><init>(Lfreemarker/template/TemplateSequenceModel;)V

    const/4 v1, 0x1

    move-object v2, v0

    const/4 v4, 0x1

    .line 9
    :goto_2
    invoke-direct {p0, p1}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->A(Lfreemarker/core/d0;)Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    move-result-object v5

    move-object v1, p0

    move-object v6, p1

    .line 10
    invoke-virtual/range {v1 .. v6}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->z(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateModel;ZLfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    new-instance v0, Lfreemarker/core/t2;

    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-direct {v0, v1, v3, p1}, Lfreemarker/core/t2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw v0
.end method

.method public q(Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/core/return;->q(Lfreemarker/core/h0;)V

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/h0;->switch()V

    return-void
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

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p2, 0x0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/h0;

    iput-object p1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->final:Lfreemarker/core/h0;

    .line 3
    instance-of p2, p1, Lfreemarker/core/w1;

    if-eqz p2, :cond_0

    .line 4
    check-cast p1, Lfreemarker/core/w1;

    .line 5
    invoke-virtual {p0, p1, v1}, Lfreemarker/core/interface;->s(Lfreemarker/core/w1;I)V

    .line 6
    new-instance p2, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$if;

    invoke-direct {p2, p1}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$if;-><init>(Lfreemarker/core/w1;)V

    iput-object p2, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->super:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    :cond_0
    return-void

    :cond_1
    const-string p1, "requires exactly 1"

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/interface;->y(Ljava/lang/String;Lfreemarker/core/m4;Lfreemarker/core/m4;)Lfreemarker/core/h3;

    move-result-object p1

    throw p1
.end method

.method public final switch()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->throw:Z

    return-void
.end method

.method public t(Lfreemarker/core/h0;Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)V
    .locals 1

    .line 1
    check-cast p1, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;

    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->final:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v0, p2, p3, p4}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p2

    iput-object p2, p1, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->final:Lfreemarker/core/h0;

    return-void
.end method

.method public u(I)Lfreemarker/core/h0;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->final:Lfreemarker/core/h0;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
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
    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->final:Lfreemarker/core/h0;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public w()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract z(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateModel;ZLfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
