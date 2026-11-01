.class public final synthetic Landroid/support/v4/wa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/FileSelectorActivity;

.field public final synthetic for:I

.field public final synthetic if:Lcom/wsw/cospa/bean/RipeFile;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/FileSelectorActivity;Lcom/wsw/cospa/bean/RipeFile;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/wa0;->do:Lcom/wsw/cospa/activity/FileSelectorActivity;

    iput-object p2, p0, Landroid/support/v4/wa0;->if:Lcom/wsw/cospa/bean/RipeFile;

    iput p3, p0, Landroid/support/v4/wa0;->for:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/wa0;->do:Lcom/wsw/cospa/activity/FileSelectorActivity;

    iget-object v1, p0, Landroid/support/v4/wa0;->if:Lcom/wsw/cospa/bean/RipeFile;

    iget v2, p0, Landroid/support/v4/wa0;->for:I

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->import(Lcom/wsw/cospa/activity/FileSelectorActivity;Lcom/wsw/cospa/bean/RipeFile;ILio/reactivex/SingleEmitter;)V

    return-void
.end method
