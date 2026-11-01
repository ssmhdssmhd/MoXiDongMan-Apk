.class public final synthetic Landroid/support/v4/wb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/FindComicDetailAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/wb0;->do:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    iput p2, p0, Landroid/support/v4/wb0;->if:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/wb0;->do:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    iget v1, p0, Landroid/support/v4/wb0;->if:I

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->if(Lcom/wsw/cospa/adapter/FindComicDetailAdapter;ILandroid/view/View;)V

    return-void
.end method
