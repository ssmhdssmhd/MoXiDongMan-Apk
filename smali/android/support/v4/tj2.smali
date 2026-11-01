.class public final synthetic Landroid/support/v4/tj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;

.field public final synthetic for:I

.field public final synthetic if:Lcom/wsw/cospa/bean/Node;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;Lcom/wsw/cospa/bean/Node;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/tj2;->do:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;

    iput-object p2, p0, Landroid/support/v4/tj2;->if:Lcom/wsw/cospa/bean/Node;

    iput p3, p0, Landroid/support/v4/tj2;->for:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/tj2;->do:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;

    iget-object v1, p0, Landroid/support/v4/tj2;->if:Lcom/wsw/cospa/bean/Node;

    iget v2, p0, Landroid/support/v4/tj2;->for:I

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->do(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;Lcom/wsw/cospa/bean/Node;ILandroid/view/View;)V

    return-void
.end method
