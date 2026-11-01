.class public final synthetic Lcom/wsw/cospa/activity/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AliPayPacketActivity$do;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/AliPayPacketActivity$do;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/try;->do:Lcom/wsw/cospa/activity/AliPayPacketActivity$do;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/wsw/cospa/activity/try;->do:Lcom/wsw/cospa/activity/AliPayPacketActivity$do;

    invoke-static {v0, p1, p2}, Lcom/wsw/cospa/activity/AliPayPacketActivity$do;->do(Lcom/wsw/cospa/activity/AliPayPacketActivity$do;Landroid/content/DialogInterface;I)V

    return-void
.end method
