.class Lfreemarker/core/e$case$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/e$case;->z(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateModel;ZLfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lfreemarker/core/d0;

.field public do:Z

.field public final synthetic else:Lfreemarker/core/e$case;

.field public for:Z

.field public if:Lfreemarker/template/TemplateModel;

.field public final synthetic new:Lfreemarker/template/TemplateModelIterator;

.field public final synthetic try:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;


# direct methods
.method public constructor <init>(Lfreemarker/core/e$case;Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/e$case$do;->else:Lfreemarker/core/e$case;

    iput-object p2, p0, Lfreemarker/core/e$case$do;->new:Lfreemarker/template/TemplateModelIterator;

    iput-object p3, p0, Lfreemarker/core/e$case$do;->try:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    iput-object p4, p0, Lfreemarker/core/e$case$do;->case:Lfreemarker/core/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private do()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/e$case$do;->do:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :cond_1
    iget-object v1, p0, Lfreemarker/core/e$case$do;->new:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lfreemarker/core/e$case$do;->new:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v1

    .line 4
    :try_start_0
    iget-object v3, p0, Lfreemarker/core/e$case$do;->else:Lfreemarker/core/e$case;

    iget-object v4, p0, Lfreemarker/core/e$case$do;->try:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    iget-object v5, p0, Lfreemarker/core/e$case$do;->case:Lfreemarker/core/d0;

    invoke-virtual {v3, v1, v4, v5}, Lfreemarker/core/e$if;->D(Lfreemarker/template/TemplateModel;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Z

    move-result v3
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    .line 5
    iput-object v1, p0, Lfreemarker/core/e$case$do;->if:Lfreemarker/template/TemplateModel;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Landroid/support/v4/vl2;

    iget-object v2, p0, Lfreemarker/core/e$case$do;->case:Lfreemarker/core/d0;

    const-string v3, "Failed to transform element"

    invoke-direct {v1, v0, v2, v3}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    iput-boolean v2, p0, Lfreemarker/core/e$case$do;->for:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lfreemarker/core/e$case$do;->if:Lfreemarker/template/TemplateModel;

    :goto_0
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_1

    .line 9
    iput-boolean v2, p0, Lfreemarker/core/e$case$do;->do:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/core/e$case$do;->do()V

    .line 2
    iget-boolean v0, p0, Lfreemarker/core/e$case$do;->for:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/core/e$case$do;->do()V

    .line 2
    iget-boolean v0, p0, Lfreemarker/core/e$case$do;->for:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/core/e$case$do;->do:Z

    .line 4
    iget-object v0, p0, Lfreemarker/core/e$case$do;->if:Lfreemarker/template/TemplateModel;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next() was called when hasNext() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
