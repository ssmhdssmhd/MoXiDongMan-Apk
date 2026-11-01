.class public final synthetic Landroid/support/v4/ts1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/listener/OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SearchComicActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ts1;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ts1;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->native(Lcom/wsw/cospa/activity/SearchComicActivity;I)V

    return-void
.end method
