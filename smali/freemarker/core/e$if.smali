.class abstract Lfreemarker/core/e$if;
.super Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/e$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/e$if;-><init>()V

    return-void
.end method


# virtual methods
.method public final D(Lfreemarker/template/TemplateModel;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-interface {p2, p1, p3}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;->transformElement(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    .line 2
    instance-of p2, p1, Lfreemarker/template/TemplateBooleanModel;

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Landroid/support/v4/vl2;

    invoke-virtual {p0}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->B()Lfreemarker/core/h0;

    move-result-object p2

    const-string v0, "The filter expression has returned no value (has returned null), rather than a boolean."

    invoke-direct {p1, p2, p3, v0}, Landroid/support/v4/vl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_0
    new-instance p2, Landroid/support/v4/vl2;

    invoke-virtual {p0}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->B()Lfreemarker/core/h0;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "The filter expression had to return a boolean value, but it returned "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/support/v4/zk2;

    new-instance v4, Landroid/support/v4/bl2;

    invoke-direct {v4, p1}, Landroid/support/v4/bl2;-><init>(Lfreemarker/template/TemplateModel;)V

    invoke-direct {v3, v4}, Landroid/support/v4/zk2;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 p1, 0x2

    const-string v2, " instead."

    aput-object v2, v1, p1

    invoke-direct {p2, v0, p3, v1}, Landroid/support/v4/vl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;[Ljava/lang/Object;)V

    throw p2

    .line 5
    :cond_1
    check-cast p1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1

    return p1
.end method
