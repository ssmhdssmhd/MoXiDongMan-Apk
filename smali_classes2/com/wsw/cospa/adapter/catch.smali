.class public final synthetic Lcom/wsw/cospa/adapter/catch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

.field public final synthetic for:Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;

.field public final synthetic if:Lcom/wsw/cospa/bean/RipeFile;

.field public final synthetic new:I


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/FileSelectorAdapter;Lcom/wsw/cospa/bean/RipeFile;Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/adapter/catch;->do:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/catch;->if:Lcom/wsw/cospa/bean/RipeFile;

    iput-object p3, p0, Lcom/wsw/cospa/adapter/catch;->for:Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;

    iput p4, p0, Lcom/wsw/cospa/adapter/catch;->new:I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    iget-object v0, p0, Lcom/wsw/cospa/adapter/catch;->do:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/catch;->if:Lcom/wsw/cospa/bean/RipeFile;

    iget-object v2, p0, Lcom/wsw/cospa/adapter/catch;->for:Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;

    iget v3, p0, Lcom/wsw/cospa/adapter/catch;->new:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->do(Lcom/wsw/cospa/adapter/FileSelectorAdapter;Lcom/wsw/cospa/bean/RipeFile;Lcom/wsw/cospa/adapter/FileSelectorAdapter$do;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method
