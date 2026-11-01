.class Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$ElementTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field private final do:Lfreemarker/template/TemplateMethodModel;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateMethodModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$for;->do:Lfreemarker/template/TemplateMethodModel;

    return-void
.end method


# virtual methods
.method public transformElement(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$for;->do:Lfreemarker/template/TemplateMethodModel;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateMethodModel;->exec(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_0

    check-cast p1, Lfreemarker/template/TemplateModel;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lfreemarker/core/t;->implements()Lfreemarker/template/ObjectWrapper;

    move-result-object p2

    invoke-interface {p2, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    :goto_0
    return-object p1
.end method
