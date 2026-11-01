.class Lfreemarker/core/e$break;
.super Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "break"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;-><init>()V

    return-void
.end method

.method public static synthetic D(Lfreemarker/core/e$break;Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/core/e$break;->E(Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p0

    return-object p0
.end method

.method private E(Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;->transformElement(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Landroid/support/v4/vl2;

    invoke-virtual {p0}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->B()Lfreemarker/core/h0;

    move-result-object p2

    const-string v0, "The element mapper function has returned no return value (has returned null)."

    invoke-direct {p1, p2, p3, v0}, Landroid/support/v4/vl2;-><init>(Lfreemarker/core/h0;Lfreemarker/core/d0;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public z(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateModel;ZLfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;->C()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-direct {p0, p1, p4, p5}, Lfreemarker/core/e$break;->E(Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/support/v4/l52;

    invoke-direct {p1, p2}, Landroid/support/v4/l52;-><init>(Ljava/util/List;)V

    return-object p1

    .line 6
    :cond_1
    invoke-static {p0}, Lfreemarker/core/b5;->return(Lfreemarker/core/h0;)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1

    .line 7
    :cond_2
    new-instance v0, Lfreemarker/core/e$break$do;

    invoke-direct {v0, p0, p1, p4, p5}, Lfreemarker/core/e$break$do;-><init>(Lfreemarker/core/e$break;Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)V

    .line 8
    instance-of p1, p2, Lfreemarker/template/TemplateCollectionModelEx;

    if-eqz p1, :cond_3

    .line 9
    new-instance p1, Lfreemarker/core/l1;

    check-cast p2, Lfreemarker/template/TemplateCollectionModelEx;

    invoke-direct {p1, v0, p2, p3}, Lfreemarker/core/l1;-><init>(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateCollectionModelEx;Z)V

    return-object p1

    .line 10
    :cond_3
    instance-of p1, p2, Lfreemarker/template/TemplateSequenceModel;

    if-eqz p1, :cond_4

    .line 11
    new-instance p1, Lfreemarker/core/m1;

    check-cast p2, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {p1, v0, p2}, Lfreemarker/core/m1;-><init>(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateSequenceModel;)V

    return-object p1

    .line 12
    :cond_4
    new-instance p1, Lfreemarker/core/n1;

    invoke-direct {p1, v0, p3}, Lfreemarker/core/n1;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    return-object p1
.end method
