.class Lcom/qmuiteam/qmui/qqface/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/qqface/do;->new(Ljava/lang/CharSequence;IIZ)Lcom/qmuiteam/qmui/qqface/do$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v4/yh1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/text/Spannable;

.field public final synthetic if:Lcom/qmuiteam/qmui/qqface/do;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/qqface/do;Landroid/text/Spannable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/do$do;->if:Lcom/qmuiteam/qmui/qqface/do;

    iput-object p2, p0, Lcom/qmuiteam/qmui/qqface/do$do;->do:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/yh1;

    check-cast p2, Landroid/support/v4/yh1;

    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/qqface/do$do;->do(Landroid/support/v4/yh1;Landroid/support/v4/yh1;)I

    move-result p1

    return p1
.end method

.method public do(Landroid/support/v4/yh1;Landroid/support/v4/yh1;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/do$do;->do:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/do$do;->do:Landroid/text/Spannable;

    invoke-interface {v0, p2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
