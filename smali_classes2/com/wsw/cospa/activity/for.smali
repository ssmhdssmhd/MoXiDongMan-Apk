.class public final synthetic Lcom/wsw/cospa/activity/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AddComicSourceActivity$else;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/AddComicSourceActivity$else;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/for;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity$else;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/wsw/cospa/activity/for;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity$else;

    invoke-static {v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;->do(Lcom/wsw/cospa/activity/AddComicSourceActivity$else;)V

    return-void
.end method
