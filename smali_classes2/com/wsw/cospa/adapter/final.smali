.class public final synthetic Lcom/wsw/cospa/adapter/final;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;

.field public final synthetic for:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;

.field public final synthetic if:Lcom/wsw/cospa/bean/Node;

.field public final synthetic new:I


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;Lcom/wsw/cospa/bean/Node;Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/adapter/final;->do:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/final;->if:Lcom/wsw/cospa/bean/Node;

    iput-object p3, p0, Lcom/wsw/cospa/adapter/final;->for:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;

    iput p4, p0, Lcom/wsw/cospa/adapter/final;->new:I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    iget-object v0, p0, Lcom/wsw/cospa/adapter/final;->do:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/final;->if:Lcom/wsw/cospa/bean/Node;

    iget-object v2, p0, Lcom/wsw/cospa/adapter/final;->for:Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;

    iget v3, p0, Lcom/wsw/cospa/adapter/final;->new:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;->if(Lcom/wsw/cospa/adapter/ZipFileManagerAadapter;Lcom/wsw/cospa/bean/Node;Lcom/wsw/cospa/adapter/ZipFileManagerAadapter$do;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method
