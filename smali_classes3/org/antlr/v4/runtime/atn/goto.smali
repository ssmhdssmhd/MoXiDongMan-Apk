.class public final enum Lorg/antlr/v4/runtime/atn/goto;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/atn/goto$do;,
        Lorg/antlr/v4/runtime/atn/goto$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/antlr/v4/runtime/atn/goto;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LL:Lorg/antlr/v4/runtime/atn/goto;

.field public static final enum LL_EXACT_AMBIG_DETECTION:Lorg/antlr/v4/runtime/atn/goto;

.field public static final enum SLL:Lorg/antlr/v4/runtime/atn/goto;

.field private static final synthetic do:[Lorg/antlr/v4/runtime/atn/goto;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/atn/goto;

    const-string v1, "SLL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/antlr/v4/runtime/atn/goto;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antlr/v4/runtime/atn/goto;->SLL:Lorg/antlr/v4/runtime/atn/goto;

    .line 2
    new-instance v1, Lorg/antlr/v4/runtime/atn/goto;

    const-string v3, "LL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/antlr/v4/runtime/atn/goto;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/antlr/v4/runtime/atn/goto;->LL:Lorg/antlr/v4/runtime/atn/goto;

    .line 3
    new-instance v3, Lorg/antlr/v4/runtime/atn/goto;

    const-string v5, "LL_EXACT_AMBIG_DETECTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/antlr/v4/runtime/atn/goto;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/antlr/v4/runtime/atn/goto;->LL_EXACT_AMBIG_DETECTION:Lorg/antlr/v4/runtime/atn/goto;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/antlr/v4/runtime/atn/goto;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/antlr/v4/runtime/atn/goto;->do:[Lorg/antlr/v4/runtime/atn/goto;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static allConfigsInRuleStopStates(Landroid/support/v4/throws;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/switch;

    .line 2
    iget-object v0, v0, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    instance-of v0, v0, Landroid/support/v4/yo1;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static allSubsetsConflict(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/BitSet;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/goto;->hasNonConflictingAltSet(Ljava/util/Collection;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static allSubsetsEqual(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/BitSet;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getAlts(Landroid/support/v4/throws;)Ljava/util/BitSet;
    .locals 2

    .line 4
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/switch;

    .line 6
    iget v1, v1, Landroid/support/v4/switch;->if:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getAlts(Ljava/util/Collection;)Ljava/util/BitSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/BitSet;",
            ">;)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getConflictingAltSubsets(Landroid/support/v4/throws;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/throws;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/atn/goto$if;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/goto$if;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/switch;

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/pc0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/pc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget v1, v1, Landroid/support/v4/switch;->if:I

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/pc0;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static getSingleViableAlt(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/BitSet;",
            ">;)I"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 5
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    return v2

    .line 6
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    return p0
.end method

.method public static getStateToAltMap(Landroid/support/v4/throws;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/throws;",
            ")",
            "Ljava/util/Map<",
            "Landroid/support/v4/finally;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/switch;

    .line 3
    iget-object v2, v1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 5
    iget-object v3, v1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget v1, v1, Landroid/support/v4/switch;->if:I

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getUniqueAlt(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/BitSet;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/goto;->getAlts(Ljava/util/Collection;)Ljava/util/BitSet;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public static hasConfigInRuleStopState(Landroid/support/v4/throws;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/switch;

    .line 2
    iget-object v0, v0, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    instance-of v0, v0, Landroid/support/v4/yo1;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static hasConflictingAltSet(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/BitSet;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 2
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static hasNonConflictingAltSet(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/BitSet;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 2
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static hasSLLConflictTerminatingPrediction(Lorg/antlr/v4/runtime/atn/goto;Landroid/support/v4/throws;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/goto;->allConfigsInRuleStopStates(Landroid/support/v4/throws;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lorg/antlr/v4/runtime/atn/goto;->SLL:Lorg/antlr/v4/runtime/atn/goto;

    if-ne p0, v0, :cond_2

    .line 3
    iget-boolean p0, p1, Landroid/support/v4/throws;->case:Z

    if-eqz p0, :cond_2

    .line 4
    new-instance p0, Landroid/support/v4/throws;

    invoke-direct {p0}, Landroid/support/v4/throws;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/throws;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/switch;

    .line 6
    new-instance v2, Landroid/support/v4/switch;

    sget-object v3, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    invoke-direct {v2, v0, v3}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Lorg/antlr/v4/runtime/atn/break;)V

    .line 7
    invoke-virtual {p0, v2}, Landroid/support/v4/throws;->do(Landroid/support/v4/switch;)Z

    goto :goto_0

    :cond_1
    move-object p1, p0

    .line 8
    :cond_2
    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/goto;->getConflictingAltSubsets(Landroid/support/v4/throws;)Ljava/util/Collection;

    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/goto;->hasConflictingAltSet(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/goto;->hasStateAssociatedWithOneAlt(Landroid/support/v4/throws;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static hasStateAssociatedWithOneAlt(Landroid/support/v4/throws;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/goto;->getStateToAltMap(Landroid/support/v4/throws;)Ljava/util/Map;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static resolvesToJustOneViableAlt(Ljava/util/Collection;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/BitSet;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/goto;->getSingleViableAlt(Ljava/util/Collection;)I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antlr/v4/runtime/atn/goto;
    .locals 1

    .line 1
    const-class v0, Lorg/antlr/v4/runtime/atn/goto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/antlr/v4/runtime/atn/goto;

    return-object p0
.end method

.method public static values()[Lorg/antlr/v4/runtime/atn/goto;
    .locals 1

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/goto;->do:[Lorg/antlr/v4/runtime/atn/goto;

    invoke-virtual {v0}, [Lorg/antlr/v4/runtime/atn/goto;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/goto;

    return-object v0
.end method
