.class public final synthetic Landroid/support/v4/hi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/qqtheme/framework/picker/FilePicker$OnFilePickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/QRCodeScanActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/QRCodeScanActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hi1;->do:Lcom/wsw/cospa/activity/QRCodeScanActivity;

    return-void
.end method


# virtual methods
.method public final onFilePicked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hi1;->do:Lcom/wsw/cospa/activity/QRCodeScanActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/QRCodeScanActivity;->native(Lcom/wsw/cospa/activity/QRCodeScanActivity;Ljava/lang/String;)V

    return-void
.end method
