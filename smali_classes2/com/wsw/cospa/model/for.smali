.class public final synthetic Lcom/wsw/cospa/model/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/new;

.field public final synthetic for:Lcom/wsw/cospa/bean/ComicShelfBean;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/new;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/model/for;->do:Lcom/wsw/cospa/model/new;

    iput-object p2, p0, Lcom/wsw/cospa/model/for;->if:Ljava/lang/String;

    iput-object p3, p0, Lcom/wsw/cospa/model/for;->for:Lcom/wsw/cospa/bean/ComicShelfBean;

    iput-object p4, p0, Lcom/wsw/cospa/model/for;->new:Ljava/lang/String;

    iput-object p5, p0, Lcom/wsw/cospa/model/for;->try:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 6

    iget-object v0, p0, Lcom/wsw/cospa/model/for;->do:Lcom/wsw/cospa/model/new;

    iget-object v1, p0, Lcom/wsw/cospa/model/for;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/wsw/cospa/model/for;->for:Lcom/wsw/cospa/bean/ComicShelfBean;

    iget-object v3, p0, Lcom/wsw/cospa/model/for;->new:Ljava/lang/String;

    iget-object v4, p0, Lcom/wsw/cospa/model/for;->try:Ljava/util/Map;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/model/new;->do(Lcom/wsw/cospa/model/new;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/String;Ljava/util/Map;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
