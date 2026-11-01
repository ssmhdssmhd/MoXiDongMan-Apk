.class public final synthetic Lcom/wsw/cospa/activity/implements;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ZipFileManagerActivity$if;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ZipFileManagerActivity$if;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/implements;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity$if;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/wsw/cospa/activity/implements;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity$if;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity$if;->if(Lcom/wsw/cospa/activity/ZipFileManagerActivity$if;Landroid/view/View;)V

    return-void
.end method
