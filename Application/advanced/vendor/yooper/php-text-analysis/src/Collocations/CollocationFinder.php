<?php

namespace TextAnalysis\Collocations;

use TextAnalysis\NGrams\NGramFactory;
use TextAnalysis\Analysis\FreqDist;

/**
 * Helps find popular phrases in the given set of tokens
 * @author yooper
 */
class CollocationFinder 
{
    protected $nGramSize = 2;
    
    protected $tokens = [];
    
    public function __construct(array $tokens, $nGramSize = 2) 
    {
        $this->tokens = $tokens;
        $this->nGramSize = $nGramSize;
    }
    
    /**
     * Returns a naive implementation of collocations
     * @return array
     */
    public function getCollocations()
    {
        $nGramTokens = NGramFactory::create($this->tokens, $this->nGramSize);
        return (new FreqDist($nGramTokens))->getKeyValuesByFrequency();
    }
    
    /**
     * Compute the Pointwise Mutual Information on the collocations
     * @return array
     */
    public function getCollocationsByPmi()
    {
        $nGramFreqDist = new FreqDist(NGramFactory::create($this->tokens, $this->nGramSize));
        $unigramsFreqDist = new FreqDist($this->tokens);
        
        $dataSet = [];
        foreach($nGramFreqDist->getKeys() as $nGramToken)
        {            
            $tokens = explode(" ", $nGramToken);
            $tally = 1;
            foreach($tokens as $unigramToken)
            {      
                $tally *= $unigramsFreqDist->getKeyValuesByWeight()[$unigramToken];
            }        
            
            // get probabilities of all tokens
            $dataSet[$nGramToken] = log($nGramFreqDist->getKeyValuesByWeight()[$nGramToken] / $tally );            
        }
        arsort($dataSet);
        return $dataSet;
    }
}
