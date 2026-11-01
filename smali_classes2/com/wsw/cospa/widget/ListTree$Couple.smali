.class Lcom/wsw/cospa/widget/ListTree$Couple;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/ListTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Couple"
.end annotation


# instance fields
.field public curListPos:I

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/wsw/cospa/widget/ListTree;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/ListTree;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/ListTree$Couple;->this$0:Lcom/wsw/cospa/widget/ListTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/wsw/cospa/widget/ListTree$Couple;->list:Ljava/util/List;

    .line 3
    iput p3, p0, Lcom/wsw/cospa/widget/ListTree$Couple;->curListPos:I

    return-void
.end method
