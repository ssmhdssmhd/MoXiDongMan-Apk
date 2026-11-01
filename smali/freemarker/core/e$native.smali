.class Lfreemarker/core/e$native;
.super Lfreemarker/core/e$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "native"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/e$if;-><init>(Lfreemarker/core/e$do;)V

    return-void
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

    move-result p2

    if-nez p2, :cond_2

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
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object p3

    .line 5
    invoke-virtual {p0, p3, p4, p5}, Lfreemarker/core/e$if;->D(Lfreemarker/template/TemplateModel;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroid/support/v4/l52;

    invoke-direct {p1, p2}, Landroid/support/v4/l52;-><init>(Ljava/util/List;)V

    return-object p1

    .line 8
    :cond_1
    invoke-static {p0}, Lfreemarker/core/b5;->return(Lfreemarker/core/h0;)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    new-instance p2, Lfreemarker/core/n1;

    new-instance v0, Lfreemarker/core/e$native$do;

    invoke-direct {v0, p0, p1, p4, p5}, Lfreemarker/core/e$native$do;-><init>(Lfreemarker/core/e$native;Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;Lfreemarker/core/d0;)V

    invoke-direct {p2, v0, p3}, Lfreemarker/core/n1;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    return-object p2
.end method
