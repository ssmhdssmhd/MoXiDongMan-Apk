.class public Lorg/antlr/v4/runtime/atn/new;
.super Landroid/support/v4/extends;
.source "SourceFile"


# static fields
.field public static final final:Z

.field public static final import:Z

.field public static final synthetic native:Z

.field public static final super:Z

.field public static final throw:Z

.field public static final while:Z


# instance fields
.field public break:Lorg/antlr/v4/runtime/TokenStream;

.field public final case:Lorg/antlr/v4/runtime/goto;

.field public catch:I

.field public class:Landroid/support/v4/qc1;

.field public const:Lorg/antlr/v4/runtime/dfa/do;

.field public final else:[Lorg/antlr/v4/runtime/dfa/do;

.field private goto:Lorg/antlr/v4/runtime/atn/goto;

.field public this:Landroid/support/v4/h20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h20<",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TURN_OFF_LR_LOOP_ENTRY_BRANCH_OPT"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/antlr/v4/runtime/atn/new;->import:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/static;[Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/ef1;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/new;-><init>(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/static;[Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/ef1;)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/static;[Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/ef1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p4}, Landroid/support/v4/extends;-><init>(Landroid/support/v4/static;Landroid/support/v4/ef1;)V

    .line 3
    sget-object p2, Lorg/antlr/v4/runtime/atn/goto;->LL:Lorg/antlr/v4/runtime/atn/goto;

    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/new;->goto:Lorg/antlr/v4/runtime/atn/goto;

    .line 4
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    .line 5
    iput-object p3, p0, Lorg/antlr/v4/runtime/atn/new;->else:[Lorg/antlr/v4/runtime/dfa/do;

    return-void
.end method

.method public static f(Landroid/support/v4/throws;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/switch;

    if-nez v1, :cond_1

    .line 2
    iget v1, v2, Landroid/support/v4/switch;->if:I

    goto :goto_0

    .line 3
    :cond_1
    iget v2, v2, Landroid/support/v4/switch;->if:I

    if-eq v2, v1, :cond_0

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public a(Ljava/util/BitSet;Landroid/support/v4/throws;I)[Lorg/antlr/v4/runtime/atn/break;
    .locals 4

    add-int/lit8 v0, p3, 0x1

    .line 1
    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/break;

    .line 2
    invoke-virtual {p2}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/switch;

    .line 3
    iget v2, v1, Landroid/support/v4/switch;->if:I

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget v2, v1, Landroid/support/v4/switch;->if:I

    aget-object v3, v0, v2

    iget-object v1, v1, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-static {v3, v1}, Lorg/antlr/v4/runtime/atn/break;->case(Lorg/antlr/v4/runtime/atn/break;Lorg/antlr/v4/runtime/atn/break;)Lorg/antlr/v4/runtime/atn/break;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x1

    :goto_1
    if-gt p2, p3, :cond_4

    .line 5
    aget-object v1, v0, p2

    if-nez v1, :cond_2

    .line 6
    sget-object v1, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    aput-object v1, v0, p2

    goto :goto_2

    .line 7
    :cond_2
    aget-object v1, v0, p2

    sget-object v2, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    if-eq v1, v2, :cond_3

    add-int/lit8 p1, p1, 0x1

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    const/4 v0, 0x0

    :cond_5
    return-object v0
.end method

.method public abstract(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;Landroid/support/v4/throws;Lorg/antlr/v4/runtime/TokenStream;ILandroid/support/v4/qc1;)I
    .locals 11

    move-object v8, p0

    move-object v0, p4

    move-object/from16 v1, p6

    .line 1
    invoke-interface/range {p4 .. p5}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    const/4 v2, 0x1

    .line 2
    invoke-interface {p4, v2}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v3

    move v4, v3

    move-object v3, p3

    .line 3
    :goto_0
    invoke-virtual {p0, v3, v4, v2}, Lorg/antlr/v4/runtime/atn/new;->switch(Landroid/support/v4/throws;IZ)Landroid/support/v4/throws;

    move-result-object v7

    if-nez v7, :cond_1

    move/from16 v5, p5

    .line 4
    invoke-virtual {p0, p4, v1, v3, v5}, Lorg/antlr/v4/runtime/atn/new;->g(Lorg/antlr/v4/runtime/TokenStream;Landroid/support/v4/qc1;Landroid/support/v4/throws;I)Landroid/support/v4/v31;

    move-result-object v2

    .line 5
    invoke-interface/range {p4 .. p5}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    .line 6
    invoke-virtual {p0, v3, v1}, Lorg/antlr/v4/runtime/atn/new;->d(Landroid/support/v4/throws;Landroid/support/v4/qc1;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 7
    :cond_0
    throw v2

    :cond_1
    move/from16 v5, p5

    .line 8
    invoke-static {v7}, Lorg/antlr/v4/runtime/atn/goto;->getConflictingAltSubsets(Landroid/support/v4/throws;)Ljava/util/Collection;

    move-result-object v3

    .line 9
    invoke-static {v7}, Lorg/antlr/v4/runtime/atn/new;->f(Landroid/support/v4/throws;)I

    move-result v6

    iput v6, v7, Landroid/support/v4/throws;->new:I

    const/4 v9, 0x0

    if-eqz v6, :cond_2

    :goto_1
    move v10, v6

    goto :goto_2

    .line 10
    :cond_2
    iget-object v6, v8, Lorg/antlr/v4/runtime/atn/new;->goto:Lorg/antlr/v4/runtime/atn/goto;

    sget-object v10, Lorg/antlr/v4/runtime/atn/goto;->LL_EXACT_AMBIG_DETECTION:Lorg/antlr/v4/runtime/atn/goto;

    if-eq v6, v10, :cond_3

    .line 11
    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/goto;->resolvesToJustOneViableAlt(Ljava/util/Collection;)I

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/goto;->allSubsetsConflict(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/goto;->allSubsetsEqual(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 13
    invoke-static {v3}, Lorg/antlr/v4/runtime/atn/goto;->getSingleViableAlt(Ljava/util/Collection;)I

    move-result v6

    move v10, v6

    const/4 v9, 0x1

    .line 14
    :goto_2
    iget v1, v7, Landroid/support/v4/throws;->new:I

    if-eqz v1, :cond_4

    .line 15
    invoke-interface {p4}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move-object v3, v7

    move/from16 v4, p5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/antlr/v4/runtime/atn/new;->n(Lorg/antlr/v4/runtime/dfa/do;ILandroid/support/v4/throws;II)V

    return v10

    .line 16
    :cond_4
    invoke-interface {p4}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v4

    invoke-virtual {v7}, Landroid/support/v4/throws;->case()Ljava/util/BitSet;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p5

    move v5, v9

    invoke-virtual/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/new;->l(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;IIZLjava/util/BitSet;Landroid/support/v4/throws;)V

    return v10

    :cond_5
    const/4 v3, -0x1

    if-eq v4, v3, :cond_6

    .line 17
    invoke-interface {p4}, Lorg/antlr/v4/runtime/IntStream;->consume()V

    .line 18
    invoke-interface {p4, v2}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v3

    move v4, v3

    :cond_6
    move-object v3, v7

    goto :goto_0
.end method

.method public b(Lorg/antlr/v4/runtime/atn/catch;I)Landroid/support/v4/finally;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget v0, v0, Landroid/support/v4/static;->else:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lorg/antlr/v4/runtime/atn/catch;->new(III)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p1, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/this;->class()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<rule "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public continue(Landroid/support/v4/throws;)I
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/sn0;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, v2}, Landroid/support/v4/sn0;-><init>([I)V

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/switch;

    .line 3
    invoke-virtual {v2}, Landroid/support/v4/switch;->if()I

    move-result v3

    if-gtz v3, :cond_1

    iget-object v3, v2, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    instance-of v3, v3, Landroid/support/v4/yo1;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v3}, Lorg/antlr/v4/runtime/atn/else;->catch()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    :cond_1
    iget v2, v2, Landroid/support/v4/switch;->if:I

    invoke-virtual {v0, v2}, Landroid/support/v4/sn0;->add(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/sn0;->size()I

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 6
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/sn0;->const()I

    move-result p1

    return p1
.end method

.method public d(Landroid/support/v4/throws;Landroid/support/v4/qc1;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/new;->q(Landroid/support/v4/throws;Landroid/support/v4/qc1;)Landroid/support/v4/ob1;

    move-result-object p1

    .line 2
    iget-object p2, p1, Landroid/support/v4/ob1;->a:Ljava/lang/Object;

    check-cast p2, Landroid/support/v4/throws;

    .line 3
    iget-object p1, p1, Landroid/support/v4/ob1;->b:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/throws;

    .line 4
    invoke-virtual {p0, p2}, Lorg/antlr/v4/runtime/atn/new;->continue(Landroid/support/v4/throws;)I

    move-result p2

    if-eqz p2, :cond_0

    return p2

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/throws;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/new;->continue(Landroid/support/v4/throws;)I

    move-result p1

    if-eqz p1, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public default(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;I)Landroid/support/v4/au;
    .locals 5

    .line 1
    iget-object v0, p2, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Lorg/antlr/v4/runtime/atn/new;->switch(Landroid/support/v4/throws;IZ)Landroid/support/v4/throws;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/extends;->try:Landroid/support/v4/au;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/atn/new;->throw(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;ILandroid/support/v4/au;)Landroid/support/v4/au;

    return-object v0

    .line 3
    :cond_0
    new-instance v2, Landroid/support/v4/au;

    invoke-direct {v2, v0}, Landroid/support/v4/au;-><init>(Landroid/support/v4/throws;)V

    .line 4
    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/new;->f(Landroid/support/v4/throws;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 5
    iput-boolean v4, v2, Landroid/support/v4/au;->new:Z

    .line 6
    iget-object v0, v2, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    iput v3, v0, Landroid/support/v4/throws;->new:I

    .line 7
    iput v3, v2, Landroid/support/v4/au;->try:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/new;->goto:Lorg/antlr/v4/runtime/atn/goto;

    invoke-static {v3, v0}, Lorg/antlr/v4/runtime/atn/goto;->hasSLLConflictTerminatingPrediction(Lorg/antlr/v4/runtime/atn/goto;Landroid/support/v4/throws;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, v2, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/new;->strictfp(Landroid/support/v4/throws;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, v3, Landroid/support/v4/throws;->try:Ljava/util/BitSet;

    .line 10
    iput-boolean v4, v2, Landroid/support/v4/au;->else:Z

    .line 11
    iput-boolean v4, v2, Landroid/support/v4/au;->new:Z

    .line 12
    iget-object v0, v2, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    iget-object v0, v0, Landroid/support/v4/throws;->try:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, v2, Landroid/support/v4/au;->try:I

    .line 13
    :cond_2
    :goto_0
    iget-boolean v0, v2, Landroid/support/v4/au;->new:Z

    if-eqz v0, :cond_3

    iget-object v0, v2, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    iget-boolean v0, v0, Landroid/support/v4/throws;->case:Z

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget v3, p1, Lorg/antlr/v4/runtime/dfa/do;->for:I

    invoke-virtual {v0, v3}, Landroid/support/v4/static;->for(I)Landroid/support/v4/jx;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/antlr/v4/runtime/atn/new;->j(Landroid/support/v4/au;Landroid/support/v4/jx;)V

    .line 15
    iget-object v0, v2, Landroid/support/v4/au;->goto:[Landroid/support/v4/au$do;

    if-eqz v0, :cond_3

    .line 16
    iput v1, v2, Landroid/support/v4/au;->try:I

    .line 17
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/antlr/v4/runtime/atn/new;->throw(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;ILandroid/support/v4/au;)Landroid/support/v4/au;

    move-result-object p1

    return-object p1
.end method

.method public e(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, "EOF"

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/this;->native()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/support/v4/cf2;->case:Landroid/support/v4/cf2;

    .line 2
    :goto_0
    invoke-interface {v0, p1}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 4
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public extends(Landroid/support/v4/v31;)V
    .locals 6

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "dead end configs: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/v31;->getDeadEndConfigs()Landroid/support/v4/throws;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/switch;

    .line 3
    iget-object v1, v0, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    invoke-virtual {v1}, Landroid/support/v4/finally;->for()I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    iget-object v1, v0, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v1

    .line 5
    instance-of v2, v1, Landroid/support/v4/g4;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Landroid/support/v4/g4;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Atom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/support/v4/g4;->final:I

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/new;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 8
    :cond_0
    instance-of v2, v1, Landroid/support/v4/lx1;

    if-eqz v2, :cond_2

    .line 9
    check-cast v1, Landroid/support/v4/lx1;

    .line 10
    instance-of v2, v1, Landroid/support/v4/o41;

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_1

    const-string v2, "~"

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Set "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/support/v4/lx1;->final:Landroid/support/v4/sn0;

    invoke-virtual {v1}, Landroid/support/v4/sn0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, "no edges"

    .line 12
    :goto_2
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/switch;->try(Lorg/antlr/v4/runtime/this;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final(Landroid/support/v4/switch;Landroid/support/v4/u;)Landroid/support/v4/switch;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/switch;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;)V

    return-object v0
.end method

.method public finally([Landroid/support/v4/au$do;Landroid/support/v4/qc1;Z)Ljava/util/BitSet;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 3
    iget-object v5, v4, Landroid/support/v4/au$do;->do:Lorg/antlr/v4/runtime/atn/break;

    sget-object v6, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    if-ne v5, v6, :cond_0

    .line 4
    iget v4, v4, Landroid/support/v4/au$do;->if:I

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    if-nez p3, :cond_1

    goto :goto_1

    .line 5
    :cond_0
    iget v6, v4, Landroid/support/v4/au$do;->if:I

    invoke-virtual {p0, v5, p2, v6, v2}, Lorg/antlr/v4/runtime/atn/new;->package(Lorg/antlr/v4/runtime/atn/break;Landroid/support/v4/qc1;IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    iget v4, v4, Landroid/support/v4/au$do;->if:I

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public for()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/new;->else:[Lorg/antlr/v4/runtime/dfa/do;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    new-instance v2, Lorg/antlr/v4/runtime/dfa/do;

    iget-object v3, p0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    invoke-virtual {v3, v0}, Landroid/support/v4/static;->for(I)Landroid/support/v4/jx;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/antlr/v4/runtime/dfa/do;-><init>(Landroid/support/v4/jx;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lorg/antlr/v4/runtime/TokenStream;Landroid/support/v4/qc1;Landroid/support/v4/throws;I)Landroid/support/v4/v31;
    .locals 8

    .line 1
    new-instance v7, Landroid/support/v4/v31;

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    invoke-interface {p1, p4}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v3

    const/4 p4, 0x1

    invoke-interface {p1, p4}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v4

    move-object v0, v7

    move-object v2, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/v31;-><init>(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/TokenStream;Lorg/antlr/v4/runtime/Token;Lorg/antlr/v4/runtime/Token;Landroid/support/v4/throws;Landroid/support/v4/qc1;)V

    return-object v7
.end method

.method public goto()V
    .locals 0

    return-void
.end method

.method public h(Landroid/support/v4/switch;Lorg/antlr/v4/runtime/atn/try;ZZZ)Landroid/support/v4/switch;
    .locals 2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    .line 1
    iget-object p3, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p3}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result p3

    .line 2
    iget-object p4, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    iget v0, p0, Lorg/antlr/v4/runtime/atn/new;->catch:I

    invoke-interface {p4, v0}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    .line 3
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/try;->try()Lorg/antlr/v4/runtime/atn/break$new;

    move-result-object p4

    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/new;->class:Landroid/support/v4/qc1;

    iget v1, p1, Landroid/support/v4/switch;->if:I

    invoke-virtual {p0, p4, v0, v1, p5}, Lorg/antlr/v4/runtime/atn/new;->package(Lorg/antlr/v4/runtime/atn/break;Landroid/support/v4/qc1;IZ)Z

    move-result p4

    .line 4
    iget-object p5, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p5, p3}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    if-eqz p4, :cond_0

    .line 5
    new-instance p3, Landroid/support/v4/switch;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    invoke-direct {p3, p1, p2}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    .line 6
    :cond_1
    iget-object p3, p1, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/try;->try()Lorg/antlr/v4/runtime/atn/break$new;

    move-result-object p4

    invoke-static {p3, p4}, Lorg/antlr/v4/runtime/atn/break;->if(Lorg/antlr/v4/runtime/atn/break;Lorg/antlr/v4/runtime/atn/break;)Lorg/antlr/v4/runtime/atn/break;

    move-result-object p3

    .line 7
    new-instance p4, Landroid/support/v4/switch;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    invoke-direct {p4, p1, p2, p3}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/break;)V

    move-object p3, p4

    goto :goto_0

    .line 8
    :cond_2
    new-instance p3, Landroid/support/v4/switch;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    invoke-direct {p3, p1, p2}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;)V

    :goto_0
    return-object p3
.end method

.method public i(Landroid/support/v4/switch;Lorg/antlr/v4/runtime/atn/case;ZZZ)Landroid/support/v4/switch;
    .locals 2

    if-eqz p3, :cond_3

    .line 1
    iget-boolean p3, p2, Lorg/antlr/v4/runtime/atn/case;->throw:Z

    if-eqz p3, :cond_0

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    :cond_0
    if-eqz p5, :cond_2

    .line 2
    iget-object p3, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p3}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result p3

    .line 3
    iget-object p4, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    iget v0, p0, Lorg/antlr/v4/runtime/atn/new;->catch:I

    invoke-interface {p4, v0}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    .line 4
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/case;->try()Lorg/antlr/v4/runtime/atn/break$try;

    move-result-object p4

    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/new;->class:Landroid/support/v4/qc1;

    iget v1, p1, Landroid/support/v4/switch;->if:I

    invoke-virtual {p0, p4, v0, v1, p5}, Lorg/antlr/v4/runtime/atn/new;->package(Lorg/antlr/v4/runtime/atn/break;Landroid/support/v4/qc1;IZ)Z

    move-result p4

    .line 5
    iget-object p5, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {p5, p3}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    if-eqz p4, :cond_1

    .line 6
    new-instance p3, Landroid/support/v4/switch;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    invoke-direct {p3, p1, p2}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_0

    .line 7
    :cond_2
    iget-object p3, p1, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/case;->try()Lorg/antlr/v4/runtime/atn/break$try;

    move-result-object p4

    invoke-static {p3, p4}, Lorg/antlr/v4/runtime/atn/break;->if(Lorg/antlr/v4/runtime/atn/break;Lorg/antlr/v4/runtime/atn/break;)Lorg/antlr/v4/runtime/atn/break;

    move-result-object p3

    .line 8
    new-instance p4, Landroid/support/v4/switch;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    invoke-direct {p4, p1, p2, p3}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/break;)V

    move-object p3, p4

    goto :goto_0

    .line 9
    :cond_3
    new-instance p3, Landroid/support/v4/switch;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    invoke-direct {p3, p1, p2}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;)V

    :goto_0
    return-object p3
.end method

.method public implements()Lorg/antlr/v4/runtime/goto;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    return-object v0
.end method

.method public import(Landroid/support/v4/throws;)Landroid/support/v4/throws;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Landroid/support/v4/throws;

    iget-boolean v2, p1, Landroid/support/v4/throws;->goto:Z

    invoke-direct {v1, v2}, Landroid/support/v4/throws;-><init>(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/switch;

    .line 4
    iget v5, v3, Landroid/support/v4/switch;->if:I

    if-eq v5, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v4, v3, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    iget-object v5, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    iget-object v6, p0, Lorg/antlr/v4/runtime/atn/new;->class:Landroid/support/v4/qc1;

    invoke-virtual {v4, v5, v6}, Lorg/antlr/v4/runtime/atn/break;->new(Lorg/antlr/v4/runtime/this;Landroid/support/v4/vo1;)Lorg/antlr/v4/runtime/atn/break;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v5, v3, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    iget v5, v5, Landroid/support/v4/finally;->if:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v5, v3, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    if-eq v4, v5, :cond_2

    .line 8
    new-instance v5, Landroid/support/v4/switch;

    invoke-direct {v5, v3, v4}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Lorg/antlr/v4/runtime/atn/break;)V

    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    invoke-virtual {v1, v5, v3}, Landroid/support/v4/throws;->if(Landroid/support/v4/switch;Landroid/support/v4/h20;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/throws;->if(Landroid/support/v4/switch;Landroid/support/v4/h20;)Z

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/switch;

    .line 11
    iget v3, v2, Landroid/support/v4/switch;->if:I

    if-ne v3, v4, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v2}, Landroid/support/v4/switch;->for()Z

    move-result v3

    if-nez v3, :cond_5

    .line 13
    iget-object v3, v2, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    iget v3, v3, Landroid/support/v4/finally;->if:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/else;

    if-eqz v3, :cond_5

    .line 14
    iget-object v5, v2, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v3, v5}, Lorg/antlr/v4/runtime/atn/else;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/throws;->if(Landroid/support/v4/switch;Landroid/support/v4/h20;)Z

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public instanceof(Ljava/util/BitSet;[Lorg/antlr/v4/runtime/atn/break;)[Landroid/support/v4/au$do;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_2

    .line 3
    aget-object v4, p2, v3

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    new-instance v5, Landroid/support/v4/au$do;

    invoke-direct {v5, v4, v3}, Landroid/support/v4/au$do;-><init>(Lorg/antlr/v4/runtime/atn/break;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    sget-object v5, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    if-eq v4, v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/support/v4/au$do;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/support/v4/au$do;

    return-object p1
.end method

.method public interface(Landroid/support/v4/switch;Lorg/antlr/v4/runtime/atn/catch;ZZZZ)Landroid/support/v4/switch;
    .locals 6

    .line 1
    invoke-virtual {p2}, Lorg/antlr/v4/runtime/atn/catch;->do()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-object v1

    .line 2
    :pswitch_0
    check-cast p2, Landroid/support/v4/u;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/new;->final(Landroid/support/v4/switch;Landroid/support/v4/u;)Landroid/support/v4/switch;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_1
    move-object v2, p2

    check-cast v2, Lorg/antlr/v4/runtime/atn/case;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/antlr/v4/runtime/atn/new;->i(Landroid/support/v4/switch;Lorg/antlr/v4/runtime/atn/case;ZZZ)Landroid/support/v4/switch;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    check-cast p2, Landroid/support/v4/ap1;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/new;->o(Landroid/support/v4/switch;Landroid/support/v4/ap1;)Landroid/support/v4/switch;

    move-result-object p1

    return-object p1

    :pswitch_3
    if-eqz p6, :cond_0

    const/4 p3, -0x1

    const/4 p4, 0x0

    const/4 p5, 0x1

    .line 5
    invoke-virtual {p2, p3, p4, p5}, Lorg/antlr/v4/runtime/atn/catch;->new(III)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    new-instance p3, Landroid/support/v4/switch;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    invoke-direct {p3, p1, p2}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;)V

    return-object p3

    :cond_0
    return-object v1

    .line 7
    :pswitch_4
    new-instance p3, Landroid/support/v4/switch;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    invoke-direct {p3, p1, p2}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;)V

    return-object p3

    .line 8
    :cond_1
    move-object v2, p2

    check-cast v2, Lorg/antlr/v4/runtime/atn/try;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/antlr/v4/runtime/atn/new;->h(Landroid/support/v4/switch;Lorg/antlr/v4/runtime/atn/try;ZZZ)Landroid/support/v4/switch;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public j(Landroid/support/v4/au;Landroid/support/v4/jx;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/support/v4/finally;->for()I

    move-result p2

    .line 2
    iget-object v0, p1, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/new;->volatile(Landroid/support/v4/throws;)Ljava/util/BitSet;

    move-result-object v0

    .line 3
    iget-object v1, p1, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    invoke-virtual {p0, v0, v1, p2}, Lorg/antlr/v4/runtime/atn/new;->a(Ljava/util/BitSet;Landroid/support/v4/throws;I)[Lorg/antlr/v4/runtime/atn/break;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, v0, p2}, Lorg/antlr/v4/runtime/atn/new;->instanceof(Ljava/util/BitSet;[Lorg/antlr/v4/runtime/atn/break;)[Landroid/support/v4/au$do;

    move-result-object p2

    iput-object p2, p1, Landroid/support/v4/au;->goto:[Landroid/support/v4/au$do;

    .line 5
    iput v1, p1, Landroid/support/v4/au;->try:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p2

    iput p2, p1, Landroid/support/v4/au;->try:I

    :goto_0
    return-void
.end method

.method public k(Landroid/support/v4/throws;Z)Landroid/support/v4/throws;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/goto;->allConfigsInRuleStopStates(Landroid/support/v4/throws;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/throws;

    iget-boolean v1, p1, Landroid/support/v4/throws;->goto:Z

    invoke-direct {v0, v1}, Landroid/support/v4/throws;-><init>(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/switch;

    .line 4
    iget-object v2, v1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    instance-of v3, v2, Landroid/support/v4/yo1;

    if-eqz v3, :cond_2

    .line 5
    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/throws;->if(Landroid/support/v4/switch;Landroid/support/v4/h20;)Z

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/support/v4/finally;->else()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget-object v3, v1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    invoke-virtual {v2, v3}, Landroid/support/v4/static;->case(Landroid/support/v4/finally;)Landroid/support/v4/sn0;

    move-result-object v2

    const/4 v3, -0x2

    .line 8
    invoke-virtual {v2, v3}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget-object v2, v2, Landroid/support/v4/static;->new:[Landroid/support/v4/yo1;

    iget-object v3, v1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    iget v3, v3, Landroid/support/v4/finally;->for:I

    aget-object v2, v2, v3

    .line 10
    new-instance v3, Landroid/support/v4/switch;

    invoke-direct {v3, v1, v2}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;)V

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/throws;->if(Landroid/support/v4/switch;Landroid/support/v4/h20;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public l(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;IIZLjava/util/BitSet;Landroid/support/v4/throws;)V
    .locals 8

    .line 1
    iget-object p2, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/antlr/v4/runtime/this;->try()Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-result-object v0

    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportAmbiguity(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/dfa/do;IIZLjava/util/BitSet;Landroid/support/v4/throws;)V

    :cond_0
    return-void
.end method

.method public m(Lorg/antlr/v4/runtime/dfa/do;Ljava/util/BitSet;Landroid/support/v4/throws;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/this;->try()Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-result-object v1

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    move-object v3, p1

    move v4, p4

    move v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportAttemptingFullContext(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/dfa/do;IILjava/util/BitSet;Landroid/support/v4/throws;)V

    :cond_0
    return-void
.end method

.method public n(Lorg/antlr/v4/runtime/dfa/do;ILandroid/support/v4/throws;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/this;->try()Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-result-object v1

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->reportContextSensitivity(Lorg/antlr/v4/runtime/goto;Lorg/antlr/v4/runtime/dfa/do;IIILandroid/support/v4/throws;)V

    :cond_0
    return-void
.end method

.method public native(Landroid/support/v4/switch;)Z
    .locals 10

    .line 1
    sget-boolean v0, Lorg/antlr/v4/runtime/atn/new;->import:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/finally;->new()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    move-object v2, v0

    check-cast v2, Landroid/support/v4/j12;

    iget-boolean v2, v2, Landroid/support/v4/j12;->extends:Z

    if-eqz v2, :cond_a

    iget-object v2, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/else;->class()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/else;->catch()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 4
    :cond_1
    iget-object v2, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v2}, Lorg/antlr/v4/runtime/atn/else;->while()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 5
    iget-object v4, p0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget-object v4, v4, Landroid/support/v4/static;->do:Ljava/util/List;

    iget-object v5, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v5, v3}, Lorg/antlr/v4/runtime/atn/else;->break(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/finally;

    .line 6
    iget v4, v4, Landroid/support/v4/finally;->for:I

    iget v5, v0, Landroid/support/v4/finally;->for:I

    if-eq v4, v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v0, v1}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v3

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    check-cast v3, Landroid/support/v4/ea;

    .line 8
    iget-object v3, v3, Landroid/support/v4/ea;->default:Landroid/support/v4/ca;

    iget v3, v3, Landroid/support/v4/finally;->if:I

    .line 9
    iget-object v4, p0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget-object v4, v4, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/ca;

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v2, :cond_9

    .line 10
    iget-object v6, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v6, v4}, Lorg/antlr/v4/runtime/atn/else;->break(I)I

    move-result v6

    .line 11
    iget-object v7, p0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget-object v7, v7, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/finally;

    .line 12
    invoke-virtual {v6}, Landroid/support/v4/finally;->for()I

    move-result v7

    if-ne v7, v5, :cond_8

    invoke-virtual {v6, v1}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v7

    invoke-virtual {v7}, Lorg/antlr/v4/runtime/atn/catch;->if()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    invoke-virtual {v6, v1}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v7

    iget-object v7, v7, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    .line 14
    invoke-virtual {v6}, Landroid/support/v4/finally;->new()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    if-ne v7, v0, :cond_5

    goto :goto_2

    :cond_5
    if-ne v6, v3, :cond_6

    goto :goto_2

    :cond_6
    if-ne v7, v3, :cond_7

    goto :goto_2

    .line 15
    :cond_7
    invoke-virtual {v7}, Landroid/support/v4/finally;->new()I

    move-result v6

    if-ne v6, v9, :cond_8

    invoke-virtual {v7}, Landroid/support/v4/finally;->for()I

    move-result v6

    if-ne v6, v5, :cond_8

    invoke-virtual {v7, v1}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v5

    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/catch;->if()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v7, v1}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v5

    iget-object v5, v5, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    if-ne v5, v0, :cond_8

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    return v1

    :cond_9
    return v5

    :cond_a
    :goto_4
    return v1
.end method

.method public o(Landroid/support/v4/switch;Landroid/support/v4/ap1;)Landroid/support/v4/switch;
    .locals 2

    .line 1
    iget-object v0, p2, Landroid/support/v4/ap1;->throw:Landroid/support/v4/finally;

    .line 2
    iget-object v1, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    iget v0, v0, Landroid/support/v4/finally;->if:I

    invoke-static {v1, v0}, Landroid/support/v4/d02;->static(Lorg/antlr/v4/runtime/atn/else;I)Landroid/support/v4/d02;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/support/v4/switch;

    iget-object p2, p2, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    invoke-direct {v1, p1, p2, v0}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/else;)V

    return-object v1
.end method

.method public final p(Lorg/antlr/v4/runtime/atn/goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/new;->goto:Lorg/antlr/v4/runtime/atn/goto;

    return-void
.end method

.method public package(Lorg/antlr/v4/runtime/atn/break;Landroid/support/v4/qc1;IZ)Z
    .locals 0

    .line 1
    iget-object p3, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    invoke-virtual {p1, p3, p2}, Lorg/antlr/v4/runtime/atn/break;->for(Lorg/antlr/v4/runtime/this;Landroid/support/v4/vo1;)Z

    move-result p1

    return p1
.end method

.method public private(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;Lorg/antlr/v4/runtime/TokenStream;ILandroid/support/v4/qc1;)I
    .locals 14

    move-object v8, p0

    move-object v6, p1

    move-object/from16 v7, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    const/4 v0, 0x1

    .line 1
    invoke-interface {v7, v0}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v1

    move v2, v1

    move-object/from16 v1, p2

    .line 2
    :goto_0
    invoke-virtual {p0, v1, v2}, Lorg/antlr/v4/runtime/atn/new;->protected(Landroid/support/v4/au;I)Landroid/support/v4/au;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {p0, p1, v1, v2}, Lorg/antlr/v4/runtime/atn/new;->default(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;I)Landroid/support/v4/au;

    move-result-object v3

    :cond_0
    move-object v11, v3

    .line 4
    sget-object v3, Landroid/support/v4/extends;->try:Landroid/support/v4/au;

    if-ne v11, v3, :cond_2

    .line 5
    iget-object v0, v1, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    invoke-virtual {p0, v7, v10, v0, v9}, Lorg/antlr/v4/runtime/atn/new;->g(Lorg/antlr/v4/runtime/TokenStream;Landroid/support/v4/qc1;Landroid/support/v4/throws;I)Landroid/support/v4/v31;

    move-result-object v0

    .line 6
    invoke-interface/range {p3 .. p4}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    .line 7
    iget-object v1, v1, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    invoke-virtual {p0, v1, v10}, Lorg/antlr/v4/runtime/atn/new;->d(Landroid/support/v4/throws;Landroid/support/v4/qc1;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    .line 8
    :cond_1
    throw v0

    .line 9
    :cond_2
    iget-boolean v1, v11, Landroid/support/v4/au;->else:Z

    const/4 v12, 0x0

    if-eqz v1, :cond_7

    iget-object v1, v8, Lorg/antlr/v4/runtime/atn/new;->goto:Lorg/antlr/v4/runtime/atn/goto;

    sget-object v3, Lorg/antlr/v4/runtime/atn/goto;->SLL:Lorg/antlr/v4/runtime/atn/goto;

    if-eq v1, v3, :cond_7

    .line 10
    iget-object v1, v11, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    iget-object v1, v1, Landroid/support/v4/throws;->try:Ljava/util/BitSet;

    .line 11
    iget-object v2, v11, Landroid/support/v4/au;->goto:[Landroid/support/v4/au$do;

    if-eqz v2, :cond_5

    .line 12
    invoke-interface/range {p3 .. p3}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v1

    if-eq v1, v9, :cond_3

    .line 13
    invoke-interface/range {p3 .. p4}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    .line 14
    :cond_3
    iget-object v2, v11, Landroid/support/v4/au;->goto:[Landroid/support/v4/au$do;

    invoke-virtual {p0, v2, v10, v0}, Lorg/antlr/v4/runtime/atn/new;->finally([Landroid/support/v4/au$do;Landroid/support/v4/qc1;Z)Ljava/util/BitSet;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-ne v3, v0, :cond_4

    .line 16
    invoke-virtual {v2, v12}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    return v0

    :cond_4
    if-eq v1, v9, :cond_6

    .line 17
    invoke-interface {v7, v1}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    goto :goto_1

    :cond_5
    move-object v2, v1

    .line 18
    :cond_6
    :goto_1
    iget-object v1, v6, Lorg/antlr/v4/runtime/dfa/do;->new:Landroid/support/v4/jx;

    invoke-virtual {p0, v1, v10, v0}, Lorg/antlr/v4/runtime/atn/new;->throws(Landroid/support/v4/finally;Landroid/support/v4/vo1;Z)Landroid/support/v4/throws;

    move-result-object v12

    .line 19
    iget-object v3, v11, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    invoke-interface/range {p3 .. p3}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/antlr/v4/runtime/atn/new;->m(Lorg/antlr/v4/runtime/dfa/do;Ljava/util/BitSet;Landroid/support/v4/throws;II)V

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 20
    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/new;->abstract(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;Landroid/support/v4/throws;Lorg/antlr/v4/runtime/TokenStream;ILandroid/support/v4/qc1;)I

    move-result v0

    return v0

    .line 21
    :cond_7
    iget-boolean v1, v11, Landroid/support/v4/au;->new:Z

    if-eqz v1, :cond_b

    .line 22
    iget-object v1, v11, Landroid/support/v4/au;->goto:[Landroid/support/v4/au$do;

    if-nez v1, :cond_8

    .line 23
    iget v0, v11, Landroid/support/v4/au;->try:I

    return v0

    .line 24
    :cond_8
    invoke-interface/range {p3 .. p3}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v4

    .line 25
    invoke-interface/range {p3 .. p4}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    .line 26
    iget-object v1, v11, Landroid/support/v4/au;->goto:[Landroid/support/v4/au$do;

    invoke-virtual {p0, v1, v10, v0}, Lorg/antlr/v4/runtime/atn/new;->finally([Landroid/support/v4/au$do;Landroid/support/v4/qc1;Z)Ljava/util/BitSet;

    move-result-object v13

    .line 27
    invoke-virtual {v13}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-eqz v1, :cond_a

    if-eq v1, v0, :cond_9

    const/4 v5, 0x0

    .line 28
    iget-object v7, v11, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move/from16 v3, p4

    move-object v6, v13

    invoke-virtual/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/new;->l(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;IIZLjava/util/BitSet;Landroid/support/v4/throws;)V

    .line 29
    invoke-virtual {v13, v12}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    return v0

    .line 30
    :cond_9
    invoke-virtual {v13, v12}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    return v0

    .line 31
    :cond_a
    iget-object v0, v11, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    invoke-virtual {p0, v7, v10, v0, v9}, Lorg/antlr/v4/runtime/atn/new;->g(Lorg/antlr/v4/runtime/TokenStream;Landroid/support/v4/qc1;Landroid/support/v4/throws;I)Landroid/support/v4/v31;

    move-result-object v0

    throw v0

    :cond_b
    const/4 v1, -0x1

    if-eq v2, v1, :cond_c

    .line 32
    invoke-interface/range {p3 .. p3}, Lorg/antlr/v4/runtime/IntStream;->consume()V

    .line 33
    invoke-interface {v7, v0}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result v1

    move v2, v1

    :cond_c
    move-object v1, v11

    goto/16 :goto_0
.end method

.method public protected(Landroid/support/v4/au;I)Landroid/support/v4/au;
    .locals 1

    .line 1
    iget-object p1, p1, Landroid/support/v4/au;->for:[Landroid/support/v4/au;

    if-eqz p1, :cond_1

    add-int/lit8 p2, p2, 0x1

    if-ltz p2, :cond_1

    .line 2
    array-length v0, p1

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget-object p1, p1, p2

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public public(Landroid/support/v4/switch;Landroid/support/v4/throws;Ljava/util/Set;ZZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/switch;",
            "Landroid/support/v4/throws;",
            "Ljava/util/Set<",
            "Landroid/support/v4/switch;",
            ">;ZZZ)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/new;->return(Landroid/support/v4/switch;Landroid/support/v4/throws;Ljava/util/Set;ZZIZ)V

    return-void
.end method

.method public q(Landroid/support/v4/throws;Landroid/support/v4/qc1;)Landroid/support/v4/ob1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/throws;",
            "Landroid/support/v4/qc1;",
            ")",
            "Landroid/support/v4/ob1<",
            "Landroid/support/v4/throws;",
            "Landroid/support/v4/throws;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/throws;

    iget-boolean v1, p1, Landroid/support/v4/throws;->goto:Z

    invoke-direct {v0, v1}, Landroid/support/v4/throws;-><init>(Z)V

    .line 2
    new-instance v1, Landroid/support/v4/throws;

    iget-boolean v2, p1, Landroid/support/v4/throws;->goto:Z

    invoke-direct {v1, v2}, Landroid/support/v4/throws;-><init>(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/switch;

    .line 4
    iget-object v4, v3, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    sget-object v5, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    if-eq v4, v5, :cond_1

    .line 5
    iget v5, v3, Landroid/support/v4/switch;->if:I

    iget-boolean v6, p1, Landroid/support/v4/throws;->goto:Z

    invoke-virtual {p0, v4, p2, v5, v6}, Lorg/antlr/v4/runtime/atn/new;->package(Lorg/antlr/v4/runtime/atn/break;Landroid/support/v4/qc1;IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Landroid/support/v4/throws;->do(Landroid/support/v4/switch;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1, v3}, Landroid/support/v4/throws;->do(Landroid/support/v4/switch;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v3}, Landroid/support/v4/throws;->do(Landroid/support/v4/switch;)Z

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Landroid/support/v4/ob1;

    invoke-direct {p1, v0, v1}, Landroid/support/v4/ob1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public return(Landroid/support/v4/switch;Landroid/support/v4/throws;Ljava/util/Set;ZZIZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/switch;",
            "Landroid/support/v4/throws;",
            "Ljava/util/Set<",
            "Landroid/support/v4/switch;",
            ">;ZZIZ)V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    .line 1
    iget-object v0, v9, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    instance-of v0, v0, Landroid/support/v4/yo1;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, v9, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/else;->class()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 3
    :goto_0
    iget-object v0, v9, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/else;->while()I

    move-result v0

    if-ge v11, v0, :cond_2

    .line 4
    iget-object v0, v9, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v0, v11}, Lorg/antlr/v4/runtime/atn/else;->break(I)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    if-eqz p5, :cond_0

    .line 5
    new-instance v0, Landroid/support/v4/switch;

    iget-object v1, v9, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    sget-object v2, Lorg/antlr/v4/runtime/atn/else;->for:Landroid/support/v4/z60;

    invoke-direct {v0, p1, v1, v2}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/else;)V

    iget-object v1, v8, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/throws;->if(Landroid/support/v4/switch;Landroid/support/v4/h20;)Z

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual/range {p0 .. p7}, Lorg/antlr/v4/runtime/atn/new;->static(Landroid/support/v4/switch;Landroid/support/v4/throws;Ljava/util/Set;ZZIZ)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, v8, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget-object v0, v0, Landroid/support/v4/static;->do:Ljava/util/List;

    iget-object v1, v9, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v1, v11}, Lorg/antlr/v4/runtime/atn/else;->break(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/finally;

    .line 8
    iget-object v1, v9, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v1, v11}, Lorg/antlr/v4/runtime/atn/else;->this(I)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v1

    .line 9
    new-instance v2, Landroid/support/v4/switch;

    iget v3, v9, Landroid/support/v4/switch;->if:I

    iget-object v4, v9, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/finally;ILorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/break;)V

    .line 10
    iget v0, v9, Landroid/support/v4/switch;->new:I

    iput v0, v2, Landroid/support/v4/switch;->new:I

    add-int/lit8 v6, p6, -0x1

    move-object v0, p0

    move-object v1, v2

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    .line 11
    invoke-virtual/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/new;->return(Landroid/support/v4/switch;Landroid/support/v4/throws;Ljava/util/Set;ZZIZ)V

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    if-eqz p5, :cond_4

    .line 12
    iget-object v0, v8, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/throws;->if(Landroid/support/v4/switch;Landroid/support/v4/h20;)Z

    return-void

    .line 13
    :cond_4
    invoke-virtual/range {p0 .. p7}, Lorg/antlr/v4/runtime/atn/new;->static(Landroid/support/v4/switch;Landroid/support/v4/throws;Ljava/util/Set;ZZIZ)V

    return-void
.end method

.method public static(Landroid/support/v4/switch;Landroid/support/v4/throws;Ljava/util/Set;ZZIZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/switch;",
            "Landroid/support/v4/throws;",
            "Ljava/util/Set<",
            "Landroid/support/v4/switch;",
            ">;ZZIZ)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 1
    iget-object v12, v9, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    .line 2
    invoke-virtual {v12}, Landroid/support/v4/finally;->else()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, v8, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    invoke-virtual {v10, v9, v0}, Landroid/support/v4/throws;->if(Landroid/support/v4/switch;Landroid/support/v4/h20;)Z

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 4
    :goto_0
    invoke-virtual {v12}, Landroid/support/v4/finally;->for()I

    move-result v0

    if-ge v14, v0, :cond_a

    if-nez v14, :cond_1

    .line 5
    invoke-virtual/range {p0 .. p1}, Lorg/antlr/v4/runtime/atn/new;->native(Landroid/support/v4/switch;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 6
    :cond_1
    invoke-virtual {v12, v14}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v7

    .line 7
    instance-of v0, v7, Landroid/support/v4/u;

    const/4 v15, 0x1

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    :goto_1
    if-nez p6, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v16

    move/from16 v5, p5

    move/from16 v6, p7

    .line 8
    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/new;->interface(Landroid/support/v4/switch;Lorg/antlr/v4/runtime/atn/catch;ZZZZ)Landroid/support/v4/switch;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 9
    invoke-virtual {v7}, Lorg/antlr/v4/runtime/atn/catch;->if()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_5

    .line 10
    :cond_4
    iget-object v0, v9, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    instance-of v0, v0, Landroid/support/v4/yo1;

    if-eqz v0, :cond_7

    .line 11
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_5

    .line 12
    :cond_5
    iget-object v0, v8, Lorg/antlr/v4/runtime/atn/new;->const:Lorg/antlr/v4/runtime/dfa/do;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/dfa/do;->for()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    check-cast v7, Landroid/support/v4/f80;

    invoke-virtual {v7}, Landroid/support/v4/f80;->try()I

    move-result v0

    .line 14
    iget-object v2, v8, Lorg/antlr/v4/runtime/atn/new;->const:Lorg/antlr/v4/runtime/dfa/do;

    iget-object v2, v2, Lorg/antlr/v4/runtime/dfa/do;->new:Landroid/support/v4/jx;

    iget v2, v2, Landroid/support/v4/finally;->for:I

    if-ne v0, v2, :cond_6

    .line 15
    invoke-virtual {v1, v15}, Landroid/support/v4/switch;->new(Z)V

    .line 16
    :cond_6
    iget v0, v1, Landroid/support/v4/switch;->new:I

    add-int/2addr v0, v15

    iput v0, v1, Landroid/support/v4/switch;->new:I

    .line 17
    iput-boolean v15, v10, Landroid/support/v4/throws;->else:Z

    add-int/lit8 v0, p6, -0x1

    goto :goto_3

    .line 18
    :cond_7
    instance-of v0, v7, Landroid/support/v4/ap1;

    if-eqz v0, :cond_8

    if-ltz p6, :cond_8

    add-int/lit8 v0, p6, 0x1

    :goto_3
    move v6, v0

    goto :goto_4

    :cond_8
    move/from16 v6, p6

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v16

    move/from16 v5, p5

    move/from16 v7, p7

    .line 19
    invoke-virtual/range {v0 .. v7}, Lorg/antlr/v4/runtime/atn/new;->return(Landroid/support/v4/switch;Landroid/support/v4/throws;Ljava/util/Set;ZZIZ)V

    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public strictfp(Landroid/support/v4/throws;)Ljava/util/BitSet;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/goto;->getConflictingAltSubsets(Landroid/support/v4/throws;)Ljava/util/Collection;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/goto;->getAlts(Ljava/util/Collection;)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public super(Lorg/antlr/v4/runtime/TokenStream;ILandroid/support/v4/qc1;)I
    .locals 8

    .line 1
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    .line 2
    invoke-interface {p1}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/new;->catch:I

    .line 3
    iput-object p3, p0, Lorg/antlr/v4/runtime/atn/new;->class:Landroid/support/v4/qc1;

    .line 4
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/new;->else:[Lorg/antlr/v4/runtime/dfa/do;

    aget-object v2, v0, p2

    .line 5
    iput-object v2, p0, Lorg/antlr/v4/runtime/atn/new;->const:Lorg/antlr/v4/runtime/dfa/do;

    .line 6
    invoke-interface {p1}, Lorg/antlr/v4/runtime/IntStream;->mark()I

    move-result p2

    .line 7
    iget v0, p0, Lorg/antlr/v4/runtime/atn/new;->catch:I

    const/4 v7, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/dfa/do;->for()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/goto;->m()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/antlr/v4/runtime/dfa/do;->do(I)Landroid/support/v4/au;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v2, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    :goto_0
    if-nez v1, :cond_3

    if-nez p3, :cond_1

    .line 11
    sget-object p3, Landroid/support/v4/vo1;->for:Landroid/support/v4/qc1;

    :cond_1
    const/4 v1, 0x0

    .line 12
    iget-object v3, v2, Lorg/antlr/v4/runtime/dfa/do;->new:Landroid/support/v4/jx;

    sget-object v4, Landroid/support/v4/vo1;->for:Landroid/support/v4/qc1;

    invoke-virtual {p0, v3, v4, v1}, Lorg/antlr/v4/runtime/atn/new;->throws(Landroid/support/v4/finally;Landroid/support/v4/vo1;Z)Landroid/support/v4/throws;

    move-result-object v1

    .line 13
    invoke-virtual {v2}, Lorg/antlr/v4/runtime/dfa/do;->for()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    iget-object v3, v2, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    iput-object v1, v3, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    .line 15
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/new;->import(Landroid/support/v4/throws;)Landroid/support/v4/throws;

    move-result-object v1

    .line 16
    new-instance v3, Landroid/support/v4/au;

    invoke-direct {v3, v1}, Landroid/support/v4/au;-><init>(Landroid/support/v4/throws;)V

    invoke-virtual {p0, v2, v3}, Lorg/antlr/v4/runtime/atn/new;->while(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;)Landroid/support/v4/au;

    move-result-object v1

    .line 17
    iget-object v3, p0, Lorg/antlr/v4/runtime/atn/new;->case:Lorg/antlr/v4/runtime/goto;

    invoke-virtual {v3}, Lorg/antlr/v4/runtime/goto;->m()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/antlr/v4/runtime/dfa/do;->try(ILandroid/support/v4/au;)V

    goto :goto_1

    .line 18
    :cond_2
    new-instance v3, Landroid/support/v4/au;

    invoke-direct {v3, v1}, Landroid/support/v4/au;-><init>(Landroid/support/v4/throws;)V

    invoke-virtual {p0, v2, v3}, Lorg/antlr/v4/runtime/atn/new;->while(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;)Landroid/support/v4/au;

    move-result-object v1

    .line 19
    iput-object v1, v2, Lorg/antlr/v4/runtime/dfa/do;->if:Landroid/support/v4/au;

    :cond_3
    :goto_1
    move-object v6, p3

    move-object v3, v1

    move-object v1, p0

    move-object v4, p1

    move v5, v0

    .line 20
    invoke-virtual/range {v1 .. v6}, Lorg/antlr/v4/runtime/atn/new;->private(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;Lorg/antlr/v4/runtime/TokenStream;ILandroid/support/v4/qc1;)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iput-object v7, p0, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    .line 22
    iput-object v7, p0, Lorg/antlr/v4/runtime/atn/new;->const:Lorg/antlr/v4/runtime/dfa/do;

    .line 23
    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    .line 24
    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/IntStream;->release(I)V

    return p3

    :catchall_0
    move-exception p3

    .line 25
    iput-object v7, p0, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    .line 26
    iput-object v7, p0, Lorg/antlr/v4/runtime/atn/new;->const:Lorg/antlr/v4/runtime/dfa/do;

    .line 27
    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    .line 28
    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/IntStream;->release(I)V

    throw p3
.end method

.method public switch(Landroid/support/v4/throws;IZ)Landroid/support/v4/throws;
    .locals 20

    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    .line 1
    iget-object v0, v7, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/h20;

    invoke-direct {v0}, Landroid/support/v4/h20;-><init>()V

    iput-object v0, v7, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    .line 3
    :cond_0
    new-instance v10, Landroid/support/v4/throws;

    invoke-direct {v10, v9}, Landroid/support/v4/throws;-><init>(Z)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v11, 0x0

    move-object v12, v11

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v13, 0x0

    const/4 v14, -0x1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/switch;

    .line 5
    iget-object v2, v1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    instance-of v3, v2, Landroid/support/v4/yo1;

    if-eqz v3, :cond_4

    if-nez v9, :cond_2

    if-ne v8, v14, :cond_1

    :cond_2
    if-nez v12, :cond_3

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v2

    .line 7
    :cond_3
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {v2}, Landroid/support/v4/finally;->for()I

    move-result v2

    :goto_1
    if-ge v13, v2, :cond_1

    .line 9
    iget-object v3, v1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    invoke-virtual {v3, v13}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v3

    .line 10
    invoke-virtual {v7, v3, v8}, Lorg/antlr/v4/runtime/atn/new;->b(Lorg/antlr/v4/runtime/atn/catch;I)Landroid/support/v4/finally;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 11
    new-instance v4, Landroid/support/v4/switch;

    invoke-direct {v4, v1, v3}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;)V

    iget-object v3, v7, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    invoke-virtual {v10, v4, v3}, Landroid/support/v4/throws;->if(Landroid/support/v4/switch;Landroid/support/v4/h20;)Z

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_6
    const/4 v15, 0x1

    if-nez v12, :cond_8

    if-eq v8, v14, :cond_8

    .line 12
    invoke-virtual {v10}, Landroid/support/v4/throws;->size()I

    move-result v0

    if-ne v0, v15, :cond_7

    goto :goto_2

    .line 13
    :cond_7
    invoke-static {v10}, Lorg/antlr/v4/runtime/atn/new;->f(Landroid/support/v4/throws;)I

    move-result v0

    if-eqz v0, :cond_8

    :goto_2
    move-object v0, v10

    goto :goto_3

    :cond_8
    move-object v0, v11

    :goto_3
    if-nez v0, :cond_b

    .line 14
    new-instance v6, Landroid/support/v4/throws;

    invoke-direct {v6, v9}, Landroid/support/v4/throws;-><init>(Z)V

    .line 15
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    if-ne v8, v14, :cond_9

    const/16 v17, 0x1

    goto :goto_4

    :cond_9
    const/16 v17, 0x0

    .line 16
    :goto_4
    invoke-virtual {v10}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/v4/switch;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v2, v6

    move-object/from16 v3, v16

    move/from16 v5, p3

    move-object/from16 v19, v6

    move/from16 v6, v17

    .line 17
    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/new;->public(Landroid/support/v4/switch;Landroid/support/v4/throws;Ljava/util/Set;ZZZ)V

    move-object/from16 v6, v19

    goto :goto_5

    :cond_a
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    :cond_b
    if-ne v8, v14, :cond_d

    if-ne v0, v10, :cond_c

    const/4 v13, 0x1

    .line 18
    :cond_c
    invoke-virtual {v7, v0, v13}, Lorg/antlr/v4/runtime/atn/new;->k(Landroid/support/v4/throws;Z)Landroid/support/v4/throws;

    move-result-object v0

    :cond_d
    if-eqz v12, :cond_f

    if-eqz v9, :cond_e

    .line 19
    invoke-static {v0}, Lorg/antlr/v4/runtime/atn/goto;->hasConfigInRuleStopState(Landroid/support/v4/throws;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 20
    :cond_e
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/switch;

    .line 21
    iget-object v3, v7, Lorg/antlr/v4/runtime/atn/new;->this:Landroid/support/v4/h20;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/throws;->if(Landroid/support/v4/switch;Landroid/support/v4/h20;)Z

    goto :goto_6

    .line 22
    :cond_f
    invoke-virtual {v0}, Landroid/support/v4/throws;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v11

    :cond_10
    return-object v0
.end method

.method public final synchronized()Lorg/antlr/v4/runtime/atn/goto;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/new;->goto:Lorg/antlr/v4/runtime/atn/goto;

    return-object v0
.end method

.method public throw(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;ILandroid/support/v4/au;)Landroid/support/v4/au;
    .locals 0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p4}, Lorg/antlr/v4/runtime/atn/new;->while(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;)Landroid/support/v4/au;

    move-result-object p1

    if-eqz p2, :cond_3

    const/4 p4, -0x1

    if-lt p3, p4, :cond_3

    .line 2
    iget-object p4, p0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget p4, p4, Landroid/support/v4/static;->else:I

    if-le p3, p4, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    monitor-enter p2

    .line 4
    :try_start_0
    iget-object p4, p2, Landroid/support/v4/au;->for:[Landroid/support/v4/au;

    if-nez p4, :cond_2

    .line 5
    iget-object p4, p0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget p4, p4, Landroid/support/v4/static;->else:I

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 p4, p4, 0x1

    new-array p4, p4, [Landroid/support/v4/au;

    iput-object p4, p2, Landroid/support/v4/au;->for:[Landroid/support/v4/au;

    .line 6
    :cond_2
    iget-object p4, p2, Landroid/support/v4/au;->for:[Landroid/support/v4/au;

    add-int/lit8 p3, p3, 0x1

    aput-object p1, p4, p3

    .line 7
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public throws(Landroid/support/v4/finally;Landroid/support/v4/vo1;Z)Landroid/support/v4/throws;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    invoke-static {v0, p2}, Lorg/antlr/v4/runtime/atn/else;->try(Landroid/support/v4/static;Landroid/support/v4/vo1;)Lorg/antlr/v4/runtime/atn/else;

    move-result-object p2

    .line 2
    new-instance v7, Landroid/support/v4/throws;

    invoke-direct {v7, p3}, Landroid/support/v4/throws;-><init>(Z)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/finally;->for()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v1

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    .line 5
    new-instance v2, Landroid/support/v4/switch;

    add-int/lit8 v8, v0, 0x1

    invoke-direct {v2, v1, v8, p2}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/finally;ILorg/antlr/v4/runtime/atn/else;)V

    .line 6
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v2

    move-object v2, v7

    move v5, p3

    .line 7
    invoke-virtual/range {v0 .. v6}, Lorg/antlr/v4/runtime/atn/new;->public(Landroid/support/v4/switch;Landroid/support/v4/throws;Ljava/util/Set;ZZZ)V

    move v0, v8

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method public transient(Lorg/antlr/v4/runtime/TokenStream;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p1, v0}, Lorg/antlr/v4/runtime/IntStream;->LA(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/new;->e(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public volatile(Landroid/support/v4/throws;)Ljava/util/BitSet;
    .locals 1

    .line 1
    iget v0, p1, Landroid/support/v4/throws;->new:I

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 3
    iget p1, p1, Landroid/support/v4/throws;->new:I

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Landroid/support/v4/throws;->try:Ljava/util/BitSet;

    :goto_0
    return-object v0
.end method

.method public while(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;)Landroid/support/v4/au;
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/extends;->try:Landroid/support/v4/au;

    if-ne p2, v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    iget-object v0, p1, Lorg/antlr/v4/runtime/dfa/do;->do:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p1, Lorg/antlr/v4/runtime/dfa/do;->do:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/au;

    if-eqz v1, :cond_1

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_1
    iget-object v1, p1, Lorg/antlr/v4/runtime/dfa/do;->do:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iput v1, p2, Landroid/support/v4/au;->do:I

    .line 6
    iget-object v1, p2, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    invoke-virtual {v1}, Landroid/support/v4/throws;->this()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p2, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    invoke-virtual {v1, p0}, Landroid/support/v4/throws;->break(Landroid/support/v4/extends;)V

    .line 8
    iget-object v1, p2, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/throws;->catch(Z)V

    .line 9
    :cond_2
    iget-object p1, p1, Lorg/antlr/v4/runtime/dfa/do;->do:Ljava/util/Map;

    invoke-interface {p1, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
