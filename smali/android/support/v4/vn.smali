.class public final synthetic Landroid/support/v4/vn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicManagerActivity;

.field public final synthetic if:Lcn/qqtheme/framework/picker/ComicFilePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ComicManagerActivity;Lcn/qqtheme/framework/picker/ComicFilePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/vn;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    iput-object p2, p0, Landroid/support/v4/vn;->if:Lcn/qqtheme/framework/picker/ComicFilePicker;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/vn;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    iget-object v1, p0, Landroid/support/v4/vn;->if:Lcn/qqtheme/framework/picker/ComicFilePicker;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->package(Lcom/wsw/cospa/activity/ComicManagerActivity;Lcn/qqtheme/framework/picker/ComicFilePicker;Landroid/view/View;)V

    return-void
.end method
