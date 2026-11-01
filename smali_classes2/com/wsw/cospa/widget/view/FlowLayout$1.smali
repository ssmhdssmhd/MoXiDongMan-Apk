.class Lcom/wsw/cospa/widget/view/FlowLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/view/FlowLayout;->layoutViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/view/FlowLayout;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/FlowLayout;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout$1;->this$0:Lcom/wsw/cospa/widget/view/FlowLayout;

    iput p2, p0, Lcom/wsw/cospa/widget/view/FlowLayout$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout$1;->this$0:Lcom/wsw/cospa/widget/view/FlowLayout;

    iget v1, p0, Lcom/wsw/cospa/widget/view/FlowLayout$1;->val$position:I

    invoke-static {v0, p1, v1}, Lcom/wsw/cospa/widget/view/FlowLayout;->access$000(Lcom/wsw/cospa/widget/view/FlowLayout;Landroid/view/View;I)V

    return-void
.end method
