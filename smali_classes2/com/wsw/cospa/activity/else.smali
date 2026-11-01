.class public final synthetic Lcom/wsw/cospa/activity/else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterActivity$for;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ChapterActivity$for;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/else;->do:Lcom/wsw/cospa/activity/ChapterActivity$for;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/wsw/cospa/activity/else;->do:Lcom/wsw/cospa/activity/ChapterActivity$for;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ChapterActivity$for;->do(Lcom/wsw/cospa/activity/ChapterActivity$for;)V

    return-void
.end method
