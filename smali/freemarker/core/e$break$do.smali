.class Lfreemarker/core/e$break$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/e$break;->z(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateModel;ZLfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/template/TemplateModelIterator;

.field public final synthetic for:Lfreemarker/core/d0;

.field public final synthetic if:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

.field public final synthetic new:Lfreemarker/core/e$break;


# direct methods
.method public constructor <init>(Lfreemarker/core/e$break;Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/e$break$do;->new:Lfreemarker/core/e$break;

    iput-object p2, p0, Lfreemarker/core/e$break$do;->do:Lfreemarker/template/TemplateModelIterator;

    iput-object p3, p0, Lfreemarker/core/e$break$do;->if:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    iput-object p4, p0, Lfreemarker/core/e$break$do;->for:Lfreemarker/core/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iget-object v0, p0, Lfreemarker/core/e$break$do;->do:Lfreemarker/template/TemplateModelIterator;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/e$break$do;->new:Lfreemarker/core/e$break;

    iget-object v1, p0, Lfreemarker/core/e$break$do;->do:Lfreemarker/template/TemplateModelIterator;

    iget-object v2, p0, Lfreemarker/core/e$break$do;->if:Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;

    iget-object v3, p0, Lfreemarker/core/e$break$do;->for:Lfreemarker/core/d0;

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/e$break;->D(Lfreemarker/core/e$break;Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/vl2;

    iget-object v2, p0, Lfreemarker/core/e$break$do;->for:Lfreemarker/core/d0;

    const-string v3, "Failed to transform element"

    invoke-direct {v1, v0, v2, v3}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Lfreemarker/core/d0;Ljava/lang/String;)V

    throw v1
.end method
