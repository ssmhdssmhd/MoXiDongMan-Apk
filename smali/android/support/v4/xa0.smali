.class public final synthetic Landroid/support/v4/xa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

.field public final synthetic for:I

.field public final synthetic if:Lcom/wsw/cospa/bean/RipeFile;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/FileSelectorAdapter;Lcom/wsw/cospa/bean/RipeFile;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/xa0;->do:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    iput-object p2, p0, Landroid/support/v4/xa0;->if:Lcom/wsw/cospa/bean/RipeFile;

    iput p3, p0, Landroid/support/v4/xa0;->for:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/xa0;->do:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    iget-object v1, p0, Landroid/support/v4/xa0;->if:Lcom/wsw/cospa/bean/RipeFile;

    iget v2, p0, Landroid/support/v4/xa0;->for:I

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->if(Lcom/wsw/cospa/adapter/FileSelectorAdapter;Lcom/wsw/cospa/bean/RipeFile;ILandroid/view/View;)V

    return-void
.end method
