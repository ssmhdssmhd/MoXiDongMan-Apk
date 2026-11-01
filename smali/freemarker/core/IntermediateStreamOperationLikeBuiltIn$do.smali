.class Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$do;
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
    name = "do"
.end annotation


# instance fields
.field private final do:Lfreemarker/core/x1;

.field private final if:Lfreemarker/core/h0;


# direct methods
.method public constructor <init>(Lfreemarker/core/x1;Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$do;->do:Lfreemarker/core/x1;

    .line 3
    iput-object p2, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$do;->if:Lfreemarker/core/h0;

    return-void
.end method


# virtual methods
.method public transformElement(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/i0;

    iget-object v1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$do;->if:Lfreemarker/core/h0;

    invoke-direct {v0, p1, v1}, Lfreemarker/core/i0;-><init>(Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;)V

    .line 2
    iget-object p1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$do;->do:Lfreemarker/core/x1;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/IntermediateStreamOperationLikeBuiltIn$do;->if:Lfreemarker/core/h0;

    .line 4
    invoke-virtual {p2, p2, p1, v0, v1}, Lfreemarker/core/d0;->O2(Lfreemarker/core/d0;Lfreemarker/core/x1;Ljava/util/List;Lfreemarker/core/h4;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method
