.class public final synthetic Lcom/wsw/cospa/activity/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AddBookShelfActivity$do;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/AddBookShelfActivity$do;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/if;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity$do;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/wsw/cospa/activity/if;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity$do;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity$do;->if(Lcom/wsw/cospa/activity/AddBookShelfActivity$do;Ljava/lang/Boolean;)V

    return-void
.end method
