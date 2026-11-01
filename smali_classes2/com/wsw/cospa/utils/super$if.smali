.class Lcom/wsw/cospa/utils/super$if;
.super Lcom/google/common/cache/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/super;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/for<",
        "Ljava/lang/String;",
        "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/super;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/utils/super;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/super$if;->do:Lcom/wsw/cospa/utils/super;

    invoke-direct {p0}, Lcom/google/common/cache/for;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/super;Lcom/wsw/cospa/utils/super$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/super$if;-><init>(Lcom/wsw/cospa/utils/super;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/wsw/cospa/widget/ListTree;

    invoke-direct {p1}, Lcom/wsw/cospa/widget/ListTree;-><init>()V

    const/4 v0, 0x0

    const-string v1, "null"

    const v2, 0x7f0c0059

    invoke-virtual {p1, v0, v1, v2}, Lcom/wsw/cospa/widget/ListTree;->addNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/lang/Object;I)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/super$if;->do(Ljava/lang/String;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    return-object p1
.end method
