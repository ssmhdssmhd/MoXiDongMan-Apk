.class public final synthetic Landroid/support/v4/lh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/lh;->do:Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;

    iput p2, p0, Landroid/support/v4/lh;->if:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/lh;->do:Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;

    iget v1, p0, Landroid/support/v4/lh;->if:I

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;->do(Lcom/wsw/cospa/widget/view/ChapterBottomSheet$ChapterAdapter;ILandroid/view/View;)V

    return-void
.end method
