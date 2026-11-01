.class public final synthetic Landroid/support/v4/po;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/ComicShelfListAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/po;->do:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    iput p2, p0, Landroid/support/v4/po;->if:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/po;->do:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    iget v1, p0, Landroid/support/v4/po;->if:I

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->do(Lcom/wsw/cospa/adapter/ComicShelfListAdapter;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
