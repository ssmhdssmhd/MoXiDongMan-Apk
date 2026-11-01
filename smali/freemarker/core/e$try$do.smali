.class Lfreemarker/core/e$try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/e$try;->z(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateModel;ZLfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

.field public do:Z

.field public final synthetic else:Lfreemarker/core/d0;

.field public for:Lfreemarker/template/TemplateModel;

.field public final synthetic goto:Lfreemarker/core/e$try;

.field public if:Z

.field public new:Z

.field public final synthetic try:Lfreemarker/template/TemplateModelIterator;


# direct methods
.method public constructor <init>(Lfreemarker/core/e$try;Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/e$try$do;->goto:Lfreemarker/core/e$try;

    iput-object p2, p0, Lfreemarker/core/e$try$do;->try:Lfreemarker/template/TemplateModelIterator;

    iput-object p3, p0, Lfreemarker/core/e$try$do;->case:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    iput-object p4, p0, Lfreemarker/core/e$try$do;->else:Lfreemarker/core/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lfreemarker/core/e$try$do;->do:Z

    return-void
.end method

.method private do()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/e$try$do;->if:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lfreemarker/core/e$try$do;->do:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 3
    :cond_1
    iget-object v0, p0, Lfreemarker/core/e$try$do;->try:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lfreemarker/core/e$try$do;->try:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 5
    :try_start_0
    iget-object v4, p0, Lfreemarker/core/e$try$do;->goto:Lfreemarker/core/e$try;

    iget-object v5, p0, Lfreemarker/core/e$try$do;->case:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    iget-object v6, p0, Lfreemarker/core/e$try$do;->else:Lfreemarker/core/d0;

    invoke-virtual {v4, v0, v5, v6}, Lfreemarker/core/e$if;->D(Lfreemarker/template/TemplateModel;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    iput-object v0, p0, Lfreemarker/core/e$try$do;->for:Lfreemarker/template/TemplateModel;
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Landroid/support/v4/vl2;

    iget-object v2, p0, Lfreemarker/core/e$try$do;->else:Lfreemarker/core/d0;

    const-string v3, "Failed to transform element"

    invoke-direct {v1, v0, v2, v3}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_0
    iput-boolean v3, p0, Lfreemarker/core/e$try$do;->do:Z

    if-nez v0, :cond_5

    .line 9
    iput-boolean v2, p0, Lfreemarker/core/e$try$do;->new:Z

    .line 10
    iput-object v1, p0, Lfreemarker/core/e$try$do;->for:Lfreemarker/template/TemplateModel;

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, p0, Lfreemarker/core/e$try$do;->try:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lfreemarker/core/e$try$do;->try:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 13
    iput-object v0, p0, Lfreemarker/core/e$try$do;->for:Lfreemarker/template/TemplateModel;

    goto :goto_1

    .line 14
    :cond_4
    iput-boolean v2, p0, Lfreemarker/core/e$try$do;->new:Z

    .line 15
    iput-object v1, p0, Lfreemarker/core/e$try$do;->for:Lfreemarker/template/TemplateModel;

    .line 16
    :cond_5
    :goto_1
    iput-boolean v2, p0, Lfreemarker/core/e$try$do;->if:Z

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
    invoke-direct {p0}, Lfreemarker/core/e$try$do;->do()V

    .line 2
    iget-boolean v0, p0, Lfreemarker/core/e$try$do;->new:Z

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
    invoke-direct {p0}, Lfreemarker/core/e$try$do;->do()V

    .line 2
    iget-boolean v0, p0, Lfreemarker/core/e$try$do;->new:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lfreemarker/core/e$try$do;->if:Z

    .line 4
    iget-object v0, p0, Lfreemarker/core/e$try$do;->for:Lfreemarker/template/TemplateModel;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next() was called when hasNext() is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
