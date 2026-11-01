.class public final synthetic Lcom/wsw/cospa/activity/native;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;

.field public final synthetic for:Z

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/native;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;

    iput p2, p0, Lcom/wsw/cospa/activity/native;->if:I

    iput-boolean p3, p0, Lcom/wsw/cospa/activity/native;->for:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/wsw/cospa/activity/native;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;

    iget v1, p0, Lcom/wsw/cospa/activity/native;->if:I

    iget-boolean v2, p0, Lcom/wsw/cospa/activity/native;->for:Z

    invoke-static {v0, v1, v2}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;->do(Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;IZ)V

    return-void
.end method
