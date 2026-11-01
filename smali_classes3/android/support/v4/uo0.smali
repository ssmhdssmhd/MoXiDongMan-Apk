.class public Landroid/support/v4/uo0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final break:Lnet/minidev/json/for;


# instance fields
.field private case:Z

.field private do:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private else:Ljava/lang/String;

.field private for:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private goto:Z

.field private if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private new:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private this:Ljava/lang/Object;

.field private try:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/minidev/json/for;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/minidev/json/for;-><init>(I)V

    sput-object v0, Landroid/support/v4/uo0;->break:Lnet/minidev/json/for;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    .line 10
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/support/v4/uo0;->new:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    .line 12
    iput-boolean v0, p0, Landroid/support/v4/uo0;->goto:Z

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroid/support/v4/uo0;->this:Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Lnet/minidev/json/new;->import(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/uo0;->if:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Landroid/support/v4/uo0;->goto:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    .line 29
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/support/v4/uo0;->new:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    .line 31
    iput-boolean v0, p0, Landroid/support/v4/uo0;->goto:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Landroid/support/v4/uo0;->this:Ljava/lang/Object;

    .line 33
    invoke-static {p1, p2}, Lnet/minidev/json/new;->native(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/uo0;->if:Ljava/lang/Object;

    .line 34
    sget-object p1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    invoke-virtual {p1, p2}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/uo0;->do:Lnet/minidev/json/writer/case;

    .line 35
    iget-object p1, p0, Landroid/support/v4/uo0;->if:Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Landroid/support/v4/uo0;->goto:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/minidev/json/writer/case;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/minidev/json/writer/case<",
            "TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    .line 19
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/support/v4/uo0;->new:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    .line 21
    iput-boolean v0, p0, Landroid/support/v4/uo0;->goto:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Landroid/support/v4/uo0;->this:Ljava/lang/Object;

    .line 23
    invoke-static {p1, p2}, Lnet/minidev/json/new;->return(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/uo0;->if:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Landroid/support/v4/uo0;->do:Lnet/minidev/json/writer/case;

    .line 25
    iput-object p1, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Landroid/support/v4/uo0;->goto:Z

    return-void
.end method

.method public constructor <init>(Lnet/minidev/json/writer/case;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/minidev/json/writer/case<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/support/v4/uo0;->new:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    .line 5
    iput-boolean v0, p0, Landroid/support/v4/uo0;->goto:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/support/v4/uo0;->this:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Landroid/support/v4/uo0;->do:Lnet/minidev/json/writer/case;

    return-void
.end method

.method private do(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public static implements()Landroid/support/v4/uo0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/uo0<",
            "Lnet/minidev/json/do;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/uo0;

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    const-class v2, Lnet/minidev/json/do;

    invoke-virtual {v1, v2}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/uo0;-><init>(Lnet/minidev/json/writer/case;)V

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/uo0;->for()Landroid/support/v4/uo0;

    return-object v0
.end method

.method private import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/support/v4/uo0<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/uo0;->default()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 7
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/16 p1, 0x5b

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 p1, 0x2f

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/uo0;->else:Ljava/lang/String;

    return-object p0
.end method

.method public static instanceof()Landroid/support/v4/uo0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/uo0<",
            "Lnet/minidev/json/if;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/uo0;

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    const-class v2, Lnet/minidev/json/if;

    invoke-virtual {v1, v2}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/uo0;-><init>(Lnet/minidev/json/writer/case;)V

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/uo0;->a()Landroid/support/v4/uo0;

    return-object v0
.end method

.method private l()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->protected(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->synchronized(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/uo0;->this:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->volatile(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Landroid/support/v4/uo0;->this:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 6
    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->do(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 8
    iget-object v2, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private protected(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    instance-of p1, p1, Ljava/util/Map;

    return p1
.end method

.method private synchronized(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public static transient()Landroid/support/v4/uo0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/uo0<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/uo0;

    sget-object v1, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    iget-object v1, v1, Lnet/minidev/json/writer/try;->for:Lnet/minidev/json/writer/case;

    invoke-direct {v0, v1}, Landroid/support/v4/uo0;-><init>(Lnet/minidev/json/writer/case;)V

    return-object v0
.end method

.method private volatile(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    instance-of p1, p1, Ljava/util/List;

    return p1
.end method


# virtual methods
.method public a()Landroid/support/v4/uo0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/uo0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/uo0;->goto:Z

    if-eqz v0, :cond_1

    const-string v0, "Can not create Object child in readonly"

    .line 3
    invoke-direct {p0, v0, v1}, Landroid/support/v4/uo0;->import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/uo0;->interface()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/uo0;->strictfp()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "can not use Object feature on Array."

    .line 7
    invoke-direct {p0, v0, v1}, Landroid/support/v4/uo0;->import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;

    :cond_3
    const-string v0, "Can not use current possition as Object"

    .line 8
    invoke-direct {p0, v0, v1}, Landroid/support/v4/uo0;->import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Landroid/support/v4/uo0;->do:Lnet/minidev/json/writer/case;

    invoke-virtual {v0}, Lnet/minidev/json/writer/case;->createObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    .line 10
    :goto_0
    iget-object v0, p0, Landroid/support/v4/uo0;->if:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/uo0;->if:Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_5
    invoke-direct {p0}, Landroid/support/v4/uo0;->l()V

    :goto_1
    return-object p0
.end method

.method public abstract()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    return v0
.end method

.method public b()Landroid/support/v4/uo0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/uo0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->if:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/uo0;->new:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/support/v4/uo0;->this:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Landroid/support/v4/uo0;->else:Ljava/lang/String;

    return-object p0
.end method

.method public break()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/Boolean;)Landroid/support/v4/uo0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Landroid/support/v4/uo0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Landroid/support/v4/uo0;->l()V

    return-object p0
.end method

.method public case()D
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public catch()Ljava/lang/Integer;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 3
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 5
    :cond_1
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 6
    check-cast v0, Ljava/lang/Long;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public class()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public const()Ljava/lang/Long;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 3
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Long;

    return-object v0

    .line 5
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 6
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public continue(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/uo0;->interface()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->synchronized(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Number;)Landroid/support/v4/uo0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            ")",
            "Landroid/support/v4/uo0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Landroid/support/v4/uo0;->l()V

    return-object p0
.end method

.method public default()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/support/v4/uo0;->new:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    const/16 v3, 0x2f

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v3, 0x5b

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Landroid/support/v4/uo0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/uo0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Landroid/support/v4/uo0;->l()V

    return-object p0
.end method

.method public else()Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 3
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Double;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public extends()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Ljava/lang/String;D)Landroid/support/v4/uo0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Landroid/support/v4/uo0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/uo0;->j(Ljava/lang/String;Ljava/lang/Number;)Landroid/support/v4/uo0;

    move-result-object p1

    return-object p1
.end method

.method public final()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finally()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public for()Landroid/support/v4/uo0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/uo0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/uo0;->goto:Z

    if-eqz v0, :cond_1

    const-string v0, "Can not create Array child in readonly"

    .line 3
    invoke-direct {p0, v0, v1}, Landroid/support/v4/uo0;->import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/uo0;->strictfp()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/uo0;->interface()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "can not use Object feature on Array."

    .line 7
    invoke-direct {p0, v0, v1}, Landroid/support/v4/uo0;->import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;

    :cond_3
    const-string v0, "Can not use current possition as Object"

    .line 8
    invoke-direct {p0, v0, v1}, Landroid/support/v4/uo0;->import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Landroid/support/v4/uo0;->do:Lnet/minidev/json/writer/case;

    invoke-virtual {v0}, Lnet/minidev/json/writer/case;->createArray()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    .line 10
    :goto_0
    iget-object v0, p0, Landroid/support/v4/uo0;->if:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/uo0;->if:Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_5
    invoke-direct {p0}, Landroid/support/v4/uo0;->l()V

    :goto_1
    return-object p0
.end method

.method public g(Ljava/lang/String;F)Landroid/support/v4/uo0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Landroid/support/v4/uo0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/uo0;->j(Ljava/lang/String;Ljava/lang/Number;)Landroid/support/v4/uo0;

    move-result-object p1

    return-object p1
.end method

.method public goto()D
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public h(Ljava/lang/String;I)Landroid/support/v4/uo0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/support/v4/uo0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/uo0;->j(Ljava/lang/String;Ljava/lang/Number;)Landroid/support/v4/uo0;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;J)Landroid/support/v4/uo0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Landroid/support/v4/uo0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/uo0;->j(Ljava/lang/String;Ljava/lang/Number;)Landroid/support/v4/uo0;

    move-result-object p1

    return-object p1
.end method

.method public varargs if([Ljava/lang/Object;)Landroid/support/v4/uo0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Landroid/support/v4/uo0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/uo0;->for()Landroid/support/v4/uo0;

    .line 2
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->do(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-object p0

    :cond_1
    aget-object v3, p1, v2

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public interface()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->protected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/Number;)Landroid/support/v4/uo0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ")",
            "Landroid/support/v4/uo0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/uo0;->a()Landroid/support/v4/uo0;

    .line 2
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->synchronized(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/uo0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/uo0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/uo0;->a()Landroid/support/v4/uo0;

    .line 2
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->synchronized(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public m(Lnet/minidev/json/for;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/uo0;->else:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/minidev/json/new;->instanceof(Ljava/lang/Object;Lnet/minidev/json/for;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/uo0;->if:Ljava/lang/Object;

    invoke-static {v0, p1}, Lnet/minidev/json/new;->instanceof(Ljava/lang/Object;Lnet/minidev/json/for;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n()Landroid/support/v4/uo0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/uo0<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroid/support/v4/uo0;->new:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public native(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/uo0;->strictfp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/uo0;->for()Landroid/support/v4/uo0;

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_2

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "current node is not an List"

    invoke-direct {p0, v0, p1}, Landroid/support/v4/uo0;->import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->do(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public new()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o(I)Landroid/support/v4/uo0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/support/v4/uo0<",
            "*>;"
        }
    .end annotation

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-gtz p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 2
    iget-object p1, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Landroid/support/v4/uo0;->new:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public package()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/uo0;->strictfp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/uo0;->interface()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public private(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/uo0;->continue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/uo0;->throw(Ljava/lang/String;)Landroid/support/v4/uo0;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/uo0;->final()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/uo0;->n()Landroid/support/v4/uo0;

    return-object p1
.end method

.method public public(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/uo0;->interface()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/uo0;->a()Landroid/support/v4/uo0;

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_2

    const-string v0, "current node is not an Object"

    .line 5
    invoke-direct {p0, v0, p1}, Landroid/support/v4/uo0;->import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->synchronized(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public return()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    return-object v0
.end method

.method public static(Ljava/lang/String;)D
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/uo0;->continue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/uo0;->throw(Ljava/lang/String;)Landroid/support/v4/uo0;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/uo0;->case()D

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/uo0;->n()Landroid/support/v4/uo0;

    return-wide v0
.end method

.method public strictfp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->volatile(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public super(I)Landroid/support/v4/uo0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/support/v4/uo0<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "current node is not an Array"

    invoke-direct {p0, v0, p1}, Landroid/support/v4/uo0;->import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    check-cast v0, Ljava/util/List;

    if-gez p1, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr p1, v1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 6
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_4

    .line 7
    iget-boolean v0, p0, Landroid/support/v4/uo0;->goto:Z

    if-eqz v0, :cond_3

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Out of bound exception for index"

    invoke-direct {p0, v0, p1}, Landroid/support/v4/uo0;->import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    iget-object v0, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    iget-object v1, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Landroid/support/v4/uo0;->new:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/uo0;->this:Ljava/lang/Object;

    return-object p0

    .line 13
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 14
    iget-object v1, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    iget-object v2, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Landroid/support/v4/uo0;->new:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 16
    iput-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    return-object p0
.end method

.method public switch(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/uo0;->continue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/uo0;->throw(Ljava/lang/String;)Landroid/support/v4/uo0;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/uo0;->break()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/uo0;->n()Landroid/support/v4/uo0;

    return p1
.end method

.method public this()Ljava/lang/Float;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/lang/Float;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_2
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 6
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public throw(Ljava/lang/String;)Landroid/support/v4/uo0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/uo0<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/uo0;->interface()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/uo0;->a()Landroid/support/v4/uo0;

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_2

    const-string v0, "current node is not an Object"

    .line 5
    invoke-direct {p0, v0, p1}, Landroid/support/v4/uo0;->import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->synchronized(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iget-boolean v0, p0, Landroid/support/v4/uo0;->goto:Z

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current Object have no key named "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/v4/uo0;->import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    iget-object v0, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    iget-object v1, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Landroid/support/v4/uo0;->new:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Landroid/support/v4/uo0;->this:Ljava/lang/Object;

    return-object p0

    .line 13
    :cond_4
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/uo0;->synchronized(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    iget-object v1, p0, Landroid/support/v4/uo0;->for:Ljava/util/Stack;

    iget-object v2, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Landroid/support/v4/uo0;->new:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 16
    iput-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    return-object p0
.end method

.method public throws(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/uo0;->continue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/uo0;->throw(Ljava/lang/String;)Landroid/support/v4/uo0;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/uo0;->catch()Ljava/lang/Integer;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/uo0;->n()Landroid/support/v4/uo0;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/uo0;->else:Ljava/lang/String;

    sget-object v1, Landroid/support/v4/uo0;->break:Lnet/minidev/json/for;

    invoke-static {v0, v1}, Lnet/minidev/json/new;->instanceof(Ljava/lang/Object;Lnet/minidev/json/for;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/uo0;->if:Ljava/lang/Object;

    invoke-static {v0}, Lnet/minidev/json/new;->implements(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public while()Landroid/support/v4/uo0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/uo0<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uo0;->case:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/uo0;->try:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    const-string v1, "current node is not an Array"

    .line 3
    invoke-direct {p0, v1, v0}, Landroid/support/v4/uo0;->import(Ljava/lang/String;Ljava/lang/Object;)Landroid/support/v4/uo0;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/uo0;->super(I)Landroid/support/v4/uo0;

    move-result-object v0

    return-object v0
.end method
