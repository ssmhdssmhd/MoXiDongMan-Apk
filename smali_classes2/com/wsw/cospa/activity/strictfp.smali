.class public final synthetic Lcom/wsw/cospa/activity/strictfp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SearchComicActivity$this;

.field public final synthetic for:I

.field public final synthetic if:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/SearchComicActivity$this;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/strictfp;->do:Lcom/wsw/cospa/activity/SearchComicActivity$this;

    iput-object p2, p0, Lcom/wsw/cospa/activity/strictfp;->if:Landroid/widget/TextView;

    iput p3, p0, Lcom/wsw/cospa/activity/strictfp;->for:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/wsw/cospa/activity/strictfp;->do:Lcom/wsw/cospa/activity/SearchComicActivity$this;

    iget-object v1, p0, Lcom/wsw/cospa/activity/strictfp;->if:Landroid/widget/TextView;

    iget v2, p0, Lcom/wsw/cospa/activity/strictfp;->for:I

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/activity/SearchComicActivity$this;->do(Lcom/wsw/cospa/activity/SearchComicActivity$this;Landroid/widget/TextView;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
