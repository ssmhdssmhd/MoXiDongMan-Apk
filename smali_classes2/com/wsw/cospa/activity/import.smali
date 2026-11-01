.class public final synthetic Lcom/wsw/cospa/activity/import;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/listener/OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicDetailActivity$if;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ComicDetailActivity$if;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/import;->do:Lcom/wsw/cospa/activity/ComicDetailActivity$if;

    return-void
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/wsw/cospa/activity/import;->do:Lcom/wsw/cospa/activity/ComicDetailActivity$if;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity$if;->do(Lcom/wsw/cospa/activity/ComicDetailActivity$if;I)V

    return-void
.end method
