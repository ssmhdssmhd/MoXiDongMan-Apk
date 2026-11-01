.class public final synthetic Landroid/support/v4/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/qqtheme/framework/picker/ComicFilePicker$OnFilePickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AppFileActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/AppFileActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/t2;->do:Lcom/wsw/cospa/activity/AppFileActivity;

    return-void
.end method


# virtual methods
.method public final onFilePicked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/t2;->do:Lcom/wsw/cospa/activity/AppFileActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/AppFileActivity;->static(Lcom/wsw/cospa/activity/AppFileActivity;Ljava/lang/String;)V

    return-void
.end method
